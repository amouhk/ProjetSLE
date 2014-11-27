--Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2014.1 (lin64) Build 881834 Fri Apr  4 14:00:25 MDT 2014
--Date        : Wed Nov 26 15:34:37 2014
--Host        : cimeld19 running 64-bit Debian GNU/Linux 7.2 (wheezy)
--Command     : generate_target ram_axi_wrapper.bd
--Design      : ram_axi_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram_axi_wrapper is
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
end ram_axi_wrapper;

architecture STRUCTURE of ram_axi_wrapper is
  component ram_axi is
  port (
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC
  );
  end component ram_axi;
begin
ram_axi_i: component ram_axi
    port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S00_AXI_araddr(15 downto 0) => S00_AXI_araddr(15 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock => S00_AXI_arlock,
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(15 downto 0) => S00_AXI_awaddr(15 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock => S00_AXI_awlock,
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
