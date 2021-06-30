%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotifyFilter_FilterFactory
%% Source: /home/centos/.asdf/plugins/erlang/kerl-home/builds/asdf_19.3/otp_src_19.3/lib/cosNotification/src/CosNotifyFilter.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotifyFilter_FilterFactory').
-ic_compiled("4_4_2").


%% Interface functions
-export([create_filter/2, create_filter/3, create_mapping_filter/3]).
-export([create_mapping_filter/4]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: create_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::InvalidGrammar
%%
create_filter(OE_THIS, Constraint_grammar) ->
    corba:call(OE_THIS, create_filter, [Constraint_grammar], ?MODULE).

create_filter(OE_THIS, OE_Options, Constraint_grammar) ->
    corba:call(OE_THIS, create_filter, [Constraint_grammar], ?MODULE, OE_Options).

%%%% Operation: create_mapping_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::InvalidGrammar
%%
create_mapping_filter(OE_THIS, Constraint_grammar, Default_value) ->
    corba:call(OE_THIS, create_mapping_filter, [Constraint_grammar, Default_value], ?MODULE).

create_mapping_filter(OE_THIS, OE_Options, Constraint_grammar, Default_value) ->
    corba:call(OE_THIS, create_mapping_filter, [Constraint_grammar, Default_value], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosNotifyFilter/FilterFactory:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(create_filter) -> 
	{{tk_objref,"IDL:omg.org/CosNotifyFilter/Filter:1.0","Filter"},
         [{tk_string,0}],
         []};
oe_tc(create_mapping_filter) -> 
	{{tk_objref,"IDL:omg.org/CosNotifyFilter/MappingFilter:1.0",
                    "MappingFilter"},
         [{tk_string,0},tk_any],
         []};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"create_mapping_filter", oe_tc(create_mapping_filter)},
	{"create_filter", oe_tc(create_filter)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosNotifyFilter/FilterFactory:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterFactory:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterFactory:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterFactory:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterFactory:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterFactory:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/FilterFactory:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosNotifyFilter_FilterFactory_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosNotifyFilter_FilterFactory_impl', Reason, State).


%%%% Operation: create_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::InvalidGrammar
%%
handle_call({OE_THIS, OE_Context, create_filter, [Constraint_grammar]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_FilterFactory_impl', create_filter, [Constraint_grammar], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: create_mapping_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::InvalidGrammar
%%
handle_call({OE_THIS, OE_Context, create_mapping_filter, [Constraint_grammar, Default_value]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_FilterFactory_impl', create_mapping_filter, [Constraint_grammar, Default_value], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(Info, State) ->
    corba:handle_info('CosNotifyFilter_FilterFactory_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosNotifyFilter_FilterFactory_impl', OldVsn, State, Extra).
