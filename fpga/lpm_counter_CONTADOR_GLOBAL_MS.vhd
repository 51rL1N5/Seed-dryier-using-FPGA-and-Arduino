-- megafunction wizard: %LPM_COUNTER%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_COUNTER 

-- ============================================================
-- File Name: lpm_counter_CONTADOR_GLOBAL_MS.vhd
-- Megafunction Name(s):
-- 			LPM_COUNTER
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.0 Build 156 04/24/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_counter_CONTADOR_GLOBAL_MS IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END lpm_counter_CONTADOR_GLOBAL_MS;


ARCHITECTURE SYN OF lpm_counter_contador_global_ms IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT lpm_counter
	GENERIC (
		lpm_direction		: STRING;
		lpm_port_updown		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			aclr	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	q    <= sub_wire0(31 DOWNTO 0);

	LPM_COUNTER_component : LPM_COUNTER
	GENERIC MAP (
		lpm_direction => "UP",
		lpm_port_updown => "PORT_UNUSED",
		lpm_type => "LPM_COUNTER",
		lpm_width => 32
	)
	PORT MAP (
		aclr => aclr,
		clock => clock,
		q => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ACLR NUMERIC "1"
-- Retrieval info: PRIVATE: ALOAD NUMERIC "0"
-- Retrieval info: PRIVATE: ASET NUMERIC "0"
-- Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: CLK_EN NUMERIC "0"
-- Retrieval info: PRIVATE: CNT_EN NUMERIC "0"
-- Retrieval info: PRIVATE: CarryIn NUMERIC "0"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "0"
-- Retrieval info: PRIVATE: Direction NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
-- Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
-- Retrieval info: PRIVATE: SCLR NUMERIC "0"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "0"
-- Retrieval info: PRIVATE: SSET NUMERIC "0"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "32"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "UP"
-- Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_UNUSED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: USED_PORT: q 0 0 32 0 OUTPUT NODEFVAL "q[31..0]"
-- Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 32 0 @q 0 0 32 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_CONTADOR_GLOBAL_MS.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_CONTADOR_GLOBAL_MS.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_CONTADOR_GLOBAL_MS.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_CONTADOR_GLOBAL_MS.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_CONTADOR_GLOBAL_MS_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
