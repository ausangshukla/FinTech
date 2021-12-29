json.extract! interest, :id, :side, :share_type, :shares_min, :shares_max, :price_per_share, :user_id, :company_id,
              :created_at, :updated_at
json.url interest_url(interest, format: :json)
