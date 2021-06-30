%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotifyFilter_MappingConstraintPairSeq
%% Source: /home/centos/.asdf/plugins/erlang/kerl-home/builds/asdf_19.3/otp_src_19.3/lib/cosNotification/src/CosNotifyFilter.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotifyFilter_MappingConstraintPairSeq').
-ic_compiled("4_4_2").


-include("CosNotifyFilter.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_sequence,
            {tk_struct,
                "IDL:omg.org/CosNotifyFilter/MappingConstraintPair:1.0",
                "MappingConstraintPair",
                [{"constraint_expression",
                  {tk_struct,"IDL:omg.org/CosNotifyFilter/ConstraintExp:1.0",
                      "ConstraintExp",
                      [{"event_types",
                        {tk_sequence,
                            {tk_struct,
                                "IDL:omg.org/CosNotification/EventType:1.0",
                                "EventType",
                                [{"domain_name",{tk_string,0}},
                                 {"type_name",{tk_string,0}}]},
                            0}},
                       {"constraint_expr",{tk_string,0}}]}},
                 {"result_to_set",tk_any}]},
            0}.

%% returns id
id() -> "IDL:omg.org/CosNotifyFilter/MappingConstraintPairSeq:1.0".

%% returns name
name() -> "CosNotifyFilter_MappingConstraintPairSeq".



