.class Lcom/android/settings/DataUsageSummary$27;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/settings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2458
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2461
    new-instance v0, Lcom/android/settings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$3500(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/android/settings/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;",
            "Lcom/android/settings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2466
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # setter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/settings/DataUsageSummary;->access$3602(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;

    .line 2467
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 2468
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 2471
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2472
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3700(Lcom/android/settings/DataUsageSummary;)V

    .line 2475
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 2476
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2478
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2458
    check-cast p2, Lcom/android/settings/net/ChartData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/DataUsageSummary$27;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 2482
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # setter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$3602(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;

    .line 2483
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 2484
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 2485
    return-void
.end method
