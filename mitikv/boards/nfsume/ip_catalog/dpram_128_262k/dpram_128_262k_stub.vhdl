-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
-- Date        : Mon Aug 15 19:15:59 2016
-- Host        : jgn-tv4 running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/aom/work/mitikv/boards/nfsume/ip_catalog/dpram_128_262k/dpram_128_262k_stub.vhdl
-- Design      : dpram_128_262k
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dpram_128_262k is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 127 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end dpram_128_262k;

architecture stub of dpram_128_262k is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[17:0],dina[127:0],douta[127:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "blk_mem_gen_v8_3_1,Vivado 2015.4";
begin
end;
