%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosPropertyService_PropertySetDefFactory
%% Source: /home/centos/.asdf/plugins/erlang/kerl-home/builds/asdf_19.3/otp_src_19.3/lib/cosProperty/src/CosProperty.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosPropertyService_PropertySetDefFactory').
-ic_compiled("4_4_2").


%% Interface functions
-export([create_propertysetdef/1, create_propertysetdef/2, create_constrained_propertysetdef/3]).
-export([create_constrained_propertysetdef/4, create_initial_propertysetdef/2, create_initial_propertysetdef/3]).

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



%%%% Operation: create_propertysetdef
%% 
%%   Returns: RetVal
%%
create_propertysetdef(OE_THIS) ->
    corba:call(OE_THIS, create_propertysetdef, [], ?MODULE).

create_propertysetdef(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, create_propertysetdef, [], ?MODULE, OE_Options).

%%%% Operation: create_constrained_propertysetdef
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::ConstraintNotSupported
%%
create_constrained_propertysetdef(OE_THIS, Allowed_property_types, Allowed_property_defs) ->
    corba:call(OE_THIS, create_constrained_propertysetdef, [Allowed_property_types, Allowed_property_defs], ?MODULE).

create_constrained_propertysetdef(OE_THIS, OE_Options, Allowed_property_types, Allowed_property_defs) ->
    corba:call(OE_THIS, create_constrained_propertysetdef, [Allowed_property_types, Allowed_property_defs], ?MODULE, OE_Options).

%%%% Operation: create_initial_propertysetdef
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
create_initial_propertysetdef(OE_THIS, Initial_property_defs) ->
    corba:call(OE_THIS, create_initial_propertysetdef, [Initial_property_defs], ?MODULE).

create_initial_propertysetdef(OE_THIS, OE_Options, Initial_property_defs) ->
    corba:call(OE_THIS, create_initial_propertysetdef, [Initial_property_defs], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosPropertyService/PropertySetDefFactory:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(create_propertysetdef) -> 
	{{tk_objref,"IDL:omg.org/CosPropertyService/PropertySetDef:1.0",
                    "PropertySetDef"},
         [],[]};
oe_tc(create_constrained_propertysetdef) -> 
	{{tk_objref,"IDL:omg.org/CosPropertyService/PropertySetDef:1.0",
             "PropertySetDef"},
         [{tk_sequence,tk_TypeCode,0},
          {tk_sequence,
              {tk_struct,"IDL:omg.org/CosPropertyService/PropertyDef:1.0",
                  "PropertyDef",
                  [{"property_name",{tk_string,0}},
                   {"property_value",tk_any},
                   {"property_mode",
                    {tk_enum,
                        "IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                        "PropertyModeType",
                        ["normal","read_only","fixed_normal","fixed_readonly",
                         "undefined"]}}]},
              0}],
         []};
oe_tc(create_initial_propertysetdef) -> 
	{{tk_objref,"IDL:omg.org/CosPropertyService/PropertySetDef:1.0",
             "PropertySetDef"},
         [{tk_sequence,
              {tk_struct,"IDL:omg.org/CosPropertyService/PropertyDef:1.0",
                  "PropertyDef",
                  [{"property_name",{tk_string,0}},
                   {"property_value",tk_any},
                   {"property_mode",
                    {tk_enum,
                        "IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                        "PropertyModeType",
                        ["normal","read_only","fixed_normal","fixed_readonly",
                         "undefined"]}}]},
              0}],
         []};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"create_initial_propertysetdef", oe_tc(create_initial_propertysetdef)},
	{"create_constrained_propertysetdef", oe_tc(create_constrained_propertysetdef)},
	{"create_propertysetdef", oe_tc(create_propertysetdef)}].




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
    "IDL:omg.org/CosPropertyService/PropertySetDefFactory:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDefFactory:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDefFactory:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDefFactory:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDefFactory:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDefFactory:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDefFactory:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosPropertyService_PropertySetDefFactory_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosPropertyService_PropertySetDefFactory_impl', Reason, State).


%%%% Operation: create_propertysetdef
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, create_propertysetdef, []}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDefFactory_impl', create_propertysetdef, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: create_constrained_propertysetdef
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::ConstraintNotSupported
%%
handle_call({OE_THIS, OE_Context, create_constrained_propertysetdef, [Allowed_property_types, Allowed_property_defs]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDefFactory_impl', create_constrained_propertysetdef, [Allowed_property_types, Allowed_property_defs], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: create_initial_propertysetdef
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
handle_call({OE_THIS, OE_Context, create_initial_propertysetdef, [Initial_property_defs]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDefFactory_impl', create_initial_propertysetdef, [Initial_property_defs], OE_State, OE_Context, OE_THIS, false);



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
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosPropertyService_PropertySetDefFactory_impl', OldVsn, State, Extra).

