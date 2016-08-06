-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4.1 (lin64) Build 1431336 Fri Dec 11 14:52:39 MST 2015
-- Date        : Sat Aug  6 15:56:23 2016
-- Host        : anago.arc.ics.keio.ac.jp running 64-bit CentOS release 6.8 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /home2/tokusasi/work/mitikv/boards/nfsume/ip_catalog/dpram_128_1024/dpram_128_1024_stub.vhdl
-- Design      : dpram_128_1024
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dpram_128_1024 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 127 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end dpram_128_1024;

architecture stub of dpram_128_1024 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[9:0],dina[127:0],douta[127:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "blk_mem_gen_v8_3_1,Vivado 2015.4.1";
begin
end;
