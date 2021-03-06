defmodule AshPolicyAuthorizer.Check.BuiltInChecks do
  @moduledoc "The global authorization checks built into ash"

  def always do
    {AshPolicyAuthorizer.Check.Static, result: true}
  end

  def never do
    {AshPolicyAuthorizer.Check.Static, result: false}
  end

  def action_type(action_type) do
    {AshPolicyAuthorizer.Check.ActionType, type: action_type}
  end

  def action(action) do
    {AshPolicyAuthorizer.Check.Action, action: action}
  end

  def relates_to_actor_via(relationship_path) do
    {AshPolicyAuthorizer.Check.RelatesToActorVia, relationship_path: List.wrap(relationship_path)}
  end

  def attribute(attribute, filter) do
    {AshPolicyAuthorizer.Check.Attribute, attribute: attribute, filter: filter}
  end

  def actor_matches(description, func) do
    {AshPolicyAuthorizer.Check.ActorMatches, matcher: func, description: description}
  end

  def changing_attributes(opts) do
    {AshPolicyAuthorizer.Check.ChangingAttributes, opts}
  end

  def actor(field), do: {:_actor, field}
end
