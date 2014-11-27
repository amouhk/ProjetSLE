----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2014 11:58:23 AM
-- Design Name: 
-- Module Name: tb_tx - Behavioral
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

entity tb_tx is
end tb_tx;

architecture Behavioral of tb_tx is
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
    
    component tx port (
        CPU_addr      : in STD_LOGIC_VECTOR (31 downto 0);
        CPU_we        : in STD_LOGIC;
        rst           : in STD_LOGIC;
        clk           : in STD_LOGIC;
        ARREADY       : in STD_LOGIC;
        RVALID        : in STD_LOGIC;a  
        RDATA         : in STD_LOGIC_VECTOR (31 downto 0);
        ARVALID       : out STD_LOGIC;
        RREADY        : out STD_LOGIC;
        ARADDR        : out STD_LOGIC_VECTOR (15 downto 0)
    );
    end component;

begin


end Behavioral;
