----------------------------------------------------------------------------------------------
--
-- Generated by X-HDL Verilog Translator - Version 4.0.0 Apr. 30, 2006
-- Wed Jun 17 2009 01:00:48
--
--      Input file      : /home/samsonn/SandBox_LBranch_11.2/env/Databases/ip/src2/L/mig_v3_2/data/dlib/virtex6/ddr3_sdram/verilog/rtl/ecc/ecc_dec_fix.v
--      Component name  : ecc_dec_fix
--      Author          : 
--      Company         : 
--
--      Description     : 
--
--
----------------------------------------------------------------------------------------------

library ieee;
   use ieee.std_logic_1164.all;
   use ieee.std_logic_unsigned.all;


entity ecc_dec_fix is
   generic (
      TCQ                        : integer := 100;
      PAYLOAD_WIDTH              : integer := 64;
      CODE_WIDTH                 : integer := 72;
      DATA_WIDTH                 : integer := 64;
      DQ_WIDTH                   : integer := 72;
      ECC_WIDTH                  : integer := 8
   );
   port (
      -- Outputs
      -- Inputs
      
      -- Compute syndromes.
      
      -- Extract payload bits from raw DRAM bits and register.
      
      -- Regenerate h_matrix from h_rows leaving out the identity part
      -- since we're not going to correct the ECC bits themselves.
      
      -- Compute flip bits.                
      
      -- Correct data.
      rd_data                    : out std_logic_vector(4 * PAYLOAD_WIDTH - 1 downto 0);
      
      -- Copy raw payload bits if ECC_TEST is ON.
      
      -- Generate status information.
      ecc_single                 : out std_logic_vector(3 downto 0);
      ecc_multiple               : out std_logic_vector(3 downto 0);
      clk                        : in std_logic;
      rst                        : in std_logic;
      h_rows                     : in std_logic_vector(CODE_WIDTH * ECC_WIDTH - 1 downto 0);
      dfi_rddata                 : in std_logic_vector(4 * DQ_WIDTH - 1 downto 0);
      correct_en                 : in std_logic;
      ecc_status_valid           : in std_logic
   );
end entity ecc_dec_fix;

architecture trans of ecc_dec_fix is

function REDUCTION_OR( A: in std_logic_vector) return std_logic is
  variable tmp : std_logic := '0';
begin
  for i in A'range loop
       tmp := tmp or A(i);
  end loop;
  return tmp;
end function REDUCTION_OR;

function REDUCTION_XOR( A: in std_logic_vector) return std_logic is
  variable tmp : std_logic := '0';
begin
  for i in A'range loop
       tmp := tmp xor A(i);
  end loop;
  return tmp;
end function REDUCTION_XOR;


function REDUCTION_NOR( A: in std_logic_vector) return std_logic is
  variable tmp : std_logic := '0';
begin
  for i in A'range loop
       tmp := tmp or A(i);
  end loop;
  return not tmp;
end function REDUCTION_NOR;
   

function BOOLEAN_TO_STD_LOGIC(A : in BOOLEAN) return std_logic is
begin
   if A = true then
       return '1';
   else
       return '0';
   end if;
end function BOOLEAN_TO_STD_LOGIC;



   type type_int0 is array (DATA_WIDTH - 1 downto 0) of std_logic_vector(ECC_WIDTH - 1 downto 0);
   
   signal syndrome_ns            : std_logic_vector(4 * ECC_WIDTH - 1 downto 0);
   signal syndrome_r             : std_logic_vector(4 * ECC_WIDTH - 1 downto 0);
   signal ecc_rddata_ns          : std_logic_vector(4 * PAYLOAD_WIDTH - 1 downto 0);
   signal ecc_rddata_r           : std_logic_vector(4 * PAYLOAD_WIDTH - 1 downto 0);
   signal h_matrix               : type_int0;
   signal flip_bits              : std_logic_vector(4 * DATA_WIDTH - 1 downto 0);
   signal s                      : integer;
   constant RAW_BIT_WIDTH        : integer := PAYLOAD_WIDTH - DATA_WIDTH;
begin
   ecc_word : for k in 0 to 3 generate
      ecc_bit : for m in 0 to  ECC_WIDTH - 1 generate
         syndrome_ns(k * ECC_WIDTH + m) <= REDUCTION_XOR(dfi_rddata((k*DQ_WIDTH)+CODE_WIDTH-1 downto (k*DQ_WIDTH)) and h_rows((m*CODE_WIDTH)+CODE_WIDTH-1 downto (m*CODE_WIDTH)));
      end generate;
   end generate;
   process (clk)
   begin
      if (clk'event and clk = '1') then
         syndrome_r <= syndrome_ns after (TCQ)*1 ps;
      end if;
   end process;
   
   extract_payload : for i in 0 to 3 generate
      ecc_rddata_ns((i*PAYLOAD_WIDTH)+PAYLOAD_WIDTH-1 downto (i*PAYLOAD_WIDTH)) <= dfi_rddata((i*DQ_WIDTH)+PAYLOAD_WIDTH-1 downto (i*DQ_WIDTH));
   end generate;
   process (clk)
   begin
      if (clk'event and clk = '1') then
         ecc_rddata_r <= ecc_rddata_ns after (TCQ)*1 ps;
      end if;
   end process;
   
   h_col : for n in 0 to  DATA_WIDTH - 1 generate
      h_bit : for p in 0 to  ECC_WIDTH - 1 generate
         h_matrix(n)(p) <=  h_rows(p * CODE_WIDTH + n);
      end generate;
   end generate;
   flip_word : for q in 0 to 3 generate
      flip_bit : for r in 0 to  DATA_WIDTH - 1 generate
         flip_bits(q * DATA_WIDTH + r) <= BOOLEAN_TO_STD_LOGIC( h_matrix(r) = syndrome_r(q * ECC_WIDTH + ECC_WIDTH - 1 downto q * ECC_WIDTH));
      end generate;
   end generate;
   process (correct_en, ecc_rddata_r, flip_bits)
   begin
      for s in 0 to 3 loop
         if (correct_en = '1') then
            rd_data((s*PAYLOAD_WIDTH)+DATA_WIDTH-1 downto (s*PAYLOAD_WIDTH)) <= ecc_rddata_r((s*PAYLOAD_WIDTH)+DATA_WIDTH-1 downto (s*PAYLOAD_WIDTH)) xor
                                                                                flip_bits((s*DATA_WIDTH)+DATA_WIDTH-1 downto (s*DATA_WIDTH));
         else
            rd_data((s*PAYLOAD_WIDTH)+DATA_WIDTH-1 downto (s*PAYLOAD_WIDTH)) <= ecc_rddata_r((s*PAYLOAD_WIDTH)+DATA_WIDTH-1 downto (s*PAYLOAD_WIDTH));
         end if;
      end loop;
   end process;
   
   int1 : if (RAW_BIT_WIDTH > 0) generate
      copy_raw_bits : for t in 0 to 3 generate
         process (ecc_rddata_r)
         begin
            rd_data((t + 1) * PAYLOAD_WIDTH - 1 downto (t + 1) * PAYLOAD_WIDTH - RAW_BIT_WIDTH + 1) <= ecc_rddata_r((t + 1) * PAYLOAD_WIDTH - 1 downto (t + 1) * PAYLOAD_WIDTH - RAW_BIT_WIDTH + 1);
         end process;
         
      end generate;
   end generate;
   compute_status : for v in 0 to 3 generate
      ecc_single(v) <= ecc_status_valid and not(REDUCTION_NOR(syndrome_r((v*ECC_WIDTH)+ECC_WIDTH-1 downto (v*ECC_WIDTH)))) and (REDUCTION_XOR(syndrome_r((v*ECC_WIDTH)+ECC_WIDTH-1 downto (v*ECC_WIDTH))));
      ecc_multiple(v) <= ecc_status_valid and not(REDUCTION_NOR(syndrome_r((v*ECC_WIDTH)+ECC_WIDTH-1 downto (v*ECC_WIDTH)))) and not(REDUCTION_XOR(syndrome_r((v*ECC_WIDTH)+ECC_WIDTH-1 downto (v*ECC_WIDTH))));
   end generate;
   
   
end architecture trans;


