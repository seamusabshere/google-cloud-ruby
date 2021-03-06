# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


module Google
  module Cloud
    module AutoML
      module V1beta1
        # Metrics for regression problems.
        # @!attribute [rw] root_mean_squared_error
        #   @return [Float]
        #     Output only. Root Mean Squared Error (RMSE).
        # @!attribute [rw] mean_absolute_error
        #   @return [Float]
        #     Output only. Mean Absolute Error (MAE).
        # @!attribute [rw] mean_absolute_percentage_error
        #   @return [Float]
        #     Output only. Mean absolute percentage error. Only set if all ground truth
        #     values are are positive.
        # @!attribute [rw] r_squared
        #   @return [Float]
        #     Output only. R squared.
        # @!attribute [rw] root_mean_squared_log_error
        #   @return [Float]
        #     Output only. Root mean squared log error.
        class RegressionEvaluationMetrics; end
      end
    end
  end
end