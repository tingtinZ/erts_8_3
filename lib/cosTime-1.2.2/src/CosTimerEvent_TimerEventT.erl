%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTimerEvent_TimerEventT
%% Source: /home/centos/.asdf/plugins/erlang/kerl-home/builds/asdf_19.3/otp_src_19.3/lib/cosTime/src/CosTimerEvent.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTimerEvent_TimerEventT').
-ic_compiled("4_4_2").


-include("CosTimerEvent.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:omg.org/CosTimerEvent/TimerEventT:1.0","TimerEventT",
                   [{"utc",
                     {tk_struct,"IDL:omg.org/TimeBase/UtcT:1.0","UtcT",
                                [{"time",tk_ulonglong},
                                 {"inacclo",tk_ulong},
                                 {"inacchi",tk_ushort},
                                 {"tdf",tk_short}]}},
                    {"event_data",tk_any}]}.

%% returns id
id() -> "IDL:omg.org/CosTimerEvent/TimerEventT:1.0".

%% returns name
name() -> "CosTimerEvent_TimerEventT".



