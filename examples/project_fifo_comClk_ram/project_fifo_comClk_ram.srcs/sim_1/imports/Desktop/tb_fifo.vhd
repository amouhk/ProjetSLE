----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2014 20:10:36
-- Design Name: 
-- Module Name: tb_fifo - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_fifo is
end tb_fifo;

architecture Behavioral of tb_fifo is
    --composants
    component fifo 
        port (
            rst : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            wr_en : IN STD_LOGIC;
            rd_en : IN STD_LOGIC;
            dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            full : OUT STD_LOGIC;
            empty : OUT STD_LOGIC;
            data_count : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
       );
    end component;
    
    --signaux internes
    signal clk   : std_logic := '0';
    signal rst   : std_logic := '0';
    signal din   : std_logic_vector(31 downto 0):= X"00000000";
    signal dout  : std_logic_vector(31 downto 0);
    signal wr_en : std_logic := '0';
    signal rd_en : std_logic := '0';
    signal full  : std_logic;
    signal empty : std_logic;
    signal data_count  : std_logic_vector(7 downto 0);
   
begin
dut: fifo 
    port map(
        clk  => clk,
        rst  => rst,
        din  => din,
        dout => dout,
        wr_en => wr_en,
        rd_en => rd_en,
        full  => full,
        empty => empty,
        data_count => data_count 
     );
    
    clk <= not(clk) after 10 ns; --1 clk = 20 ns
    --rst <= '0' ;--, '0' after 80 ns;
  

--write_in_fifo: process
--begin 
--    wait until rst'event and rst ='0';
--    wait until full = '0';
--    --wait for 20 ns;
--    wr_en <= '1';
--    for i in 1 to 9 loop
--        din   <= std_logic_vector(to_unsigned(i, 32));
--        wait for 20 ns;
--    end loop;
--    wr_en <= '0';
--    din <= (others => '0');
--end process;

--read_in_fifo: process
--begin 
--    wait until wr_en'event and wr_en = '0';
--    wait for 50 ns;
--    rd_en <= '1';
--    for i in 1 to 9 loop
--        wait for 20 ns;
--    end loop; 
--    rd_en <= '0';    
--end process;

end Behavioral;
