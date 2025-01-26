defmodule MedtingpotCore.TelemetryTest do
  use ExUnit.Case, async: true

  alias MedtingpotCore.Telemetry

  describe "metrics/0" do
    test "returns list of metrics" do
      metrics = Telemetry.metrics()
      assert is_list(metrics)
      assert length(metrics) > 0

      metric_names = Enum.map(metrics, & &1.name)

      # Test Phoenix metrics
      assert [:phoenix, :endpoint, :stop, :duration] in metric_names
      assert [:phoenix, :router_dispatch, :stop, :duration] in metric_names
      assert [:phoenix, :socket_connected, :duration] in metric_names

      # Test VM metrics
      assert [:vm, :memory, :total] in metric_names
      assert [:vm, :total_run_queue_lengths, :total] in metric_names
      assert [:vm, :total_run_queue_lengths, :cpu] in metric_names
      assert [:vm, :total_run_queue_lengths, :io] in metric_names
    end
  end

  describe "periodic_measurements/0" do
    test "returns list of periodic measurements" do
      measurements = Telemetry.periodic_measurements()
      assert is_list(measurements)
      # Currently returns an empty list, but it's designed to be extended
      # with custom periodic measurements as needed
    end
  end
end
