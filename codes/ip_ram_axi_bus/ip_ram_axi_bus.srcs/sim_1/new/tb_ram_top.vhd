----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2014 03:02:22 PM
-- Design Name: 
-- Module Name: tb_ram_top - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_ram_top is
end tb_ram_top;

architecture Behavioral of tb_ram_top is
    component ram_axi_wrapper
        port (
            ACLK : in STD_LOGIC;
            ARESETN : in STD_LOGIC;
            S00_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
            S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
            S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
            S00_AXI_arlock : in STD_LOGIC;
            S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
            S00_AXI_arready : out STD_LOGIC;
            S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
            S00_AXI_arvalid : in STD_LOGIC;
            S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
            S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
            S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
            S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
            S00_AXI_awlock : in STD_LOGIC;
            S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
            S00_AXI_awready : out STD_LOGIC;
            S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
            S00_AXI_awvalid : in STD_LOGIC;
            S00_AXI_bready : in STD_LOGIC;
            S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
            S00_AXI_bvalid : out STD_LOGIC;
            S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
            S00_AXI_rlast : out STD_LOGIC;
            S00_AXI_rready : in STD_LOGIC;
            S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
            S00_AXI_rvalid : out STD_LOGIC;
            S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
            S00_AXI_wlast : in STD_LOGIC;
            S00_AXI_wready : out STD_LOGIC;
            S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
            S00_AXI_wvalid : in STD_LOGIC
        );
    end component;
    
    signal ACLK : STD_LOGIC := '0';
    signal ARESETN : STD_LOGIC;
    signal S00_AXI_araddr : STD_LOGIC_VECTOR ( 15 downto 0 ) := (others => 'X');
    signal S00_AXI_arburst : STD_LOGIC_VECTOR ( 1 downto 0 ) := (others => '0');
    signal S00_AXI_arcache : STD_LOGIC_VECTOR ( 3 downto 0 ) := (others => '0');
    signal S00_AXI_arlen : STD_LOGIC_VECTOR ( 7 downto 0 ) := (others => '0');
    signal S00_AXI_arlock : STD_LOGIC := '0';
    signal S00_AXI_arprot : STD_LOGIC_VECTOR ( 2 downto 0 ) := (others => '0');
    signal S00_AXI_arready : STD_LOGIC;
    signal S00_AXI_arsize : STD_LOGIC_VECTOR ( 2 downto 0 ) := (others => '0');
    signal S00_AXI_arvalid : STD_LOGIC := '0';
    signal S00_AXI_awaddr : STD_LOGIC_VECTOR ( 15 downto 0 ) := (others => '0');
    signal S00_AXI_awburst : STD_LOGIC_VECTOR ( 1 downto 0 ) := (others => '0');
    signal S00_AXI_awcache : STD_LOGIC_VECTOR ( 3 downto 0 ) := (others => '0');
    signal S00_AXI_awlen : STD_LOGIC_VECTOR ( 7 downto 0 ) := (others => '0');
    signal S00_AXI_awlock : STD_LOGIC := '0';
    signal S00_AXI_awprot : STD_LOGIC_VECTOR ( 2 downto 0 ) := (others => '0');
    signal S00_AXI_awready : STD_LOGIC ;
    signal S00_AXI_awsize : STD_LOGIC_VECTOR ( 2 downto 0 ) := (others => '0');
    signal S00_AXI_awvalid : STD_LOGIC := '0';
    signal S00_AXI_bready : STD_LOGIC := '0';
    signal S00_AXI_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
    signal S00_AXI_bvalid : STD_LOGIC;
    signal S00_AXI_rdata : STD_LOGIC_VECTOR ( 31 downto 0 ) ;
    signal S00_AXI_rlast : STD_LOGIC ;
    signal S00_AXI_rready : STD_LOGIC := '0';
    signal S00_AXI_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
    signal S00_AXI_rvalid : STD_LOGIC;
    signal S00_AXI_wdata : STD_LOGIC_VECTOR ( 31 downto 0 ) := (others => '0');
    signal S00_AXI_wlast : STD_LOGIC := '0';
    signal S00_AXI_wready : STD_LOGIC;
    signal S00_AXI_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 ) := (others => '0');
    signal S00_AXI_wvalid : STD_LOGIC := '0';
    
begin
    
U1: ram_axi_wrapper
    port map (
        ACLK => ACLK,
        ARESETN => ARESETN,
        S00_AXI_araddr => S00_AXI_araddr,
        S00_AXI_arburst => S00_AXI_arburst,
        S00_AXI_arcache => S00_AXI_arcache,
        S00_AXI_arlen => S00_AXI_arlen,
        S00_AXI_arlock => S00_AXI_arlock,
        S00_AXI_arprot => S00_AXI_arprot,
        S00_AXI_arready => S00_AXI_arready,
        S00_AXI_arsize =>S00_AXI_arsize ,
        S00_AXI_arvalid => S00_AXI_arvalid,
        S00_AXI_awaddr => S00_AXI_awaddr,
        S00_AXI_awburst => S00_AXI_awburst,
        S00_AXI_awcache => S00_AXI_awcache,
        S00_AXI_awlen => S00_AXI_awlen,
        S00_AXI_awlock => S00_AXI_awlock,
        S00_AXI_awprot => S00_AXI_awprot,
        S00_AXI_awready => S00_AXI_awready,
        S00_AXI_awsize =>S00_AXI_awsize ,
        S00_AXI_awvalid =>S00_AXI_awvalid ,
        S00_AXI_bready => S00_AXI_bready,
        S00_AXI_bresp => S00_AXI_bresp,
        S00_AXI_bvalid =>S00_AXI_bvalid ,
        S00_AXI_rdata => S00_AXI_rdata,
        S00_AXI_rlast => S00_AXI_rlast,
        S00_AXI_rready => S00_AXI_rready,
        S00_AXI_rresp => S00_AXI_rresp,
        S00_AXI_rvalid =>S00_AXI_rvalid ,
        S00_AXI_wdata =>S00_AXI_wdata ,
        S00_AXI_wlast => S00_AXI_wlast,
        S00_AXI_wready => S00_AXI_wready,
        S00_AXI_wstrb => S00_AXI_wstrb,
        S00_AXI_wvalid => S00_AXI_wvalid
    );
    
 ACLK <= not(ACLK) after 5 ns;
 ARESETN <= '0', '1' after 100 ns; -- '1' after 40 ns;

write_process: process
begin 
    wait until ARESETN = '1';
    wait for 25 ns;
    --S00_AXI_awid  <= "0000";
    S00_AXI_awaddr  <=  X"C000";
    S00_AXI_awlen <= X"00";
    S00_AXI_awsize  <= "010";
    S00_AXI_awburst  <= "00";
    S00_AXI_awvalid  <= '1';
    
    S00_AXI_wdata  <= X"D0000000";
    S00_AXI_wstrb  <= X"F";
    S00_AXI_wlast  <= '1';
    S00_AXI_wvalid  <= '1';
    
    wait for 10 ns;
   
    --S00_AXI_awid  <= (others => 'X');
    S00_AXI_awaddr  <=  (others => 'X');
    S00_AXI_awlen <= (others => 'X');
    S00_AXI_awsize  <= (others => 'X');
    S00_AXI_awburst  <= (others => 'X');
    S00_AXI_awvalid  <= '0';
    
    S00_AXI_wdata  <= (others => 'X');
    S00_AXI_wstrb  <=(others => 'X');
    S00_AXI_wlast  <= '0';
    S00_AXI_wvalid  <= '0';
 
    --S00_AXI_bready  <=  
end process;
       
-- read_process: process
-- begin
--    wait until ARESETN'event and ARESETN = '1';
    
--    wait until  S00_AXI_arready'event and S00_AXI_arready = '1';
--    wait for 10 ns;
--    -- wait until ACLK'event and ACLK = '1';
--        for i in 1 to 5 loop
--            S00_AXI_arvalid <= '1';
--            S00_AXI_araddr <= X"0010";
--            S00_AXI_rready <= '0';
            
--            wait for 10 ns;
--            S00_AXI_rready <= '1';
--            S00_AXI_arvalid <= '0';
--            S00_AXI_araddr <= (others => 'X');
                
--        end loop;
    
-- end process;
    


end Behavioral;
