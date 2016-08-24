defmodule TestMessageController do
  @message_version 1
  @datastore WokAsyncMessageHandler.Repo
  @model WokAsyncMessageHandler.Models.StoppedPartition #just for test, to not generate a new model
  @keys_mapping %{"field_to_remap" => :error}
  use BotsUnit.MessageControllers.Base

  def on_destroy_after_delete(ecto_schema) do
    __MODULE__.test_callback()
    {:ok, ecto_schema}
  end

  def test_callback, do: :ok

  def on_update_before_update(attributes) do
    __MODULE__.test_on_update_before_update()
    attributes
  end

  def test_on_update_before_update, do: :ok

  def on_update_after_update(ecto_schema) do
    __MODULE__.test_on_update_after_update()
    {:ok, ecto_schema}
  end

  def test_on_update_after_update, do: :ok
end