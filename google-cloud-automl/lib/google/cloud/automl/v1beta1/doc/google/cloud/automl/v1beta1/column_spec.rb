# Copyright 2019 Google LLC
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
        # A representation of a column in a relational table. When listing them, column specs are returned in the same order in which they were
        # given on import .
        # Used by:
        # * Tables
        # @!attribute [rw] name
        #   @return [String]
        #     Output only. The resource name of the column specs.
        #     Form:
        #
        #     `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/tableSpecs/{table_spec_id}/columnSpecs/{column_spec_id}`
        # @!attribute [rw] data_type
        #   @return [Google::Cloud::AutoML::V1beta1::DataType]
        #     The data type of elements stored in the column.
        # @!attribute [rw] display_name
        #   @return [String]
        #     Output only. The name of the column to show in the interface. The name can
        #     be up to 100 characters long and can consist only of ASCII Latin letters
        #     A-Z and a-z, ASCII digits 0-9, underscores(_), and forward slashes(/), and
        #     must start with a letter or a digit.
        # @!attribute [rw] data_stats
        #   @return [Google::Cloud::AutoML::V1beta1::DataStats]
        #     Output only. Stats of the series of values in the column.
        #     This field may be stale, see the ancestor's
        #     Dataset.tables_dataset_metadata.stats_update_time field
        #     for the timestamp at which these stats were last updated.
        # @!attribute [rw] top_correlated_columns
        #   @return [Array<Google::Cloud::AutoML::V1beta1::ColumnSpec::CorrelatedColumn>]
        #     Output only. Top 10 most correlated with this column columns of the table,
        #     ordered by
        #     {Google::Cloud::AutoML::V1beta1::CorrelationStats#cramers_v cramers_v} metric.
        #     This field may be stale, see the ancestor's
        #     Dataset.tables_dataset_metadata.stats_update_time field
        #     for the timestamp at which these stats were last updated.
        # @!attribute [rw] etag
        #   @return [String]
        #     Used to perform consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        class ColumnSpec
          # Identifies the table's column, and its correlation with the column this
          # ColumnSpec describes.
          # @!attribute [rw] column_spec_id
          #   @return [String]
          #     The column_spec_id of the correlated column, which belongs to the same
          #     table as the in-context column.
          # @!attribute [rw] correlation_stats
          #   @return [Google::Cloud::AutoML::V1beta1::CorrelationStats]
          #     Correlation between this and the in-context column.
          class CorrelatedColumn; end
        end
      end
    end
  end
end