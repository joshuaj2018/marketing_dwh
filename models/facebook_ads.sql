with report as(
    select
        date_start,
        account_id,
        account_name,
        campaign_id,
        campaign_name,
        ad_set_id,
        ad_set_name,
        ad_id,
        ad_name,
        sum(clicks) as clicks,
        sum(impressions) as impressions,
        sum(spend) as spend
    from raw_facebook_ads.ads_insights
)

select *
from report