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
    module Talent
      module V4beta1
        # A Company resource represents a company in the service. A company is the
        # entity that owns job postings, that is, the hiring entity responsible for
        # employing applicants for the job position.
        # @!attribute [rw] name
        #   @return [String]
        #     Required during company update.
        #
        #     The resource name for a company. This is generated by the service when a
        #     company is created.
        #
        #     The format is
        #     "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
        #     example, "projects/api-test-project/tenants/foo/companies/bar".
        #
        #     Tenant id is optional and the default tenant is used if unspecified, for
        #     example, "projects/api-test-project/companies/bar".
        # @!attribute [rw] display_name
        #   @return [String]
        #     Required. The display name of the company, for example, "Google LLC".
        # @!attribute [rw] external_id
        #   @return [String]
        #     Required. Client side company identifier, used to uniquely identify the
        #     company.
        #
        #     The maximum number of allowed characters is 255.
        # @!attribute [rw] size
        #   @return [Google::Cloud::Talent::V4beta1::CompanySize]
        #     Optional. The employer's company size.
        # @!attribute [rw] headquarters_address
        #   @return [String]
        #     Optional. The street address of the company's main headquarters, which may
        #     be different from the job location. The service attempts to geolocate the
        #     provided address, and populates a more specific location wherever possible
        #     in
        #     {Google::Cloud::Talent::V4beta1::Company::DerivedInfo#headquarters_location DerivedInfo#headquarters_location}.
        # @!attribute [rw] hiring_agency
        #   @return [true, false]
        #     Optional. Set to true if it is the hiring agency that post jobs for other
        #     employers.
        #
        #     Defaults to false if not provided.
        # @!attribute [rw] eeo_text
        #   @return [String]
        #     Optional. Equal Employment Opportunity legal disclaimer text to be
        #     associated with all jobs, and typically to be displayed in all
        #     roles.
        #
        #     The maximum number of allowed characters is 500.
        # @!attribute [rw] website_uri
        #   @return [String]
        #     Optional. The URI representing the company's primary web site or home page,
        #     for example, "https://www.google.com".
        #
        #     The maximum number of allowed characters is 255.
        # @!attribute [rw] career_site_uri
        #   @return [String]
        #     Optional. The URI to employer's career site or careers page on the
        #     employer's web site, for example, "https://careers.google.com".
        # @!attribute [rw] image_uri
        #   @return [String]
        #     Optional. A URI that hosts the employer's company logo.
        # @!attribute [rw] keyword_searchable_job_custom_attributes
        #   @return [Array<String>]
        #     Optional. A list of keys of filterable
        #     {Google::Cloud::Talent::V4beta1::Job#custom_attributes Job#custom_attributes},
        #     whose corresponding `string_values` are used in keyword searches. Jobs with
        #     `string_values` under these specified field keys are returned if any
        #     of the values match the search keyword. Custom field values with
        #     parenthesis, brackets and special symbols are not searchable as-is,
        #     and those keyword queries must be surrounded by quotes.
        # @!attribute [rw] derived_info
        #   @return [Google::Cloud::Talent::V4beta1::Company::DerivedInfo]
        #     Output only. Derived details about the company.
        # @!attribute [rw] suspended
        #   @return [true, false]
        #     Output only. Indicates whether a company is flagged to be suspended from
        #     public availability by the service when job content appears suspicious,
        #     abusive, or spammy.
        class Company
          # Derived details about the company.
          # @!attribute [rw] headquarters_location
          #   @return [Google::Cloud::Talent::V4beta1::Location]
          #     A structured headquarters location of the company, resolved from
          #     {Google::Cloud::Talent::V4beta1::Company#headquarters_address Company#headquarters_address}
          #     if provided.
          class DerivedInfo; end
        end
      end
    end
  end
end