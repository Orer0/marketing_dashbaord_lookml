include: "/explores/marketing.explore.lkml"

explore: +marketing {
  query: test {
    dimensions: [channel.channel_name]
    measures: [story.total_unique_topsnap_views]
    filters: [story.period_time: "2018/10/01 to 2018/10/31"]
  }
}
