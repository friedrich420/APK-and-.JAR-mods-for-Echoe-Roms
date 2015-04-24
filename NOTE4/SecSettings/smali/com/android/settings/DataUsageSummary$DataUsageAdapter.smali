.class public Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings/net/UidDetailProvider;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/settings/net/UidDetailProvider;I)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "provider"    # Lcom/android/settings/net/UidDetailProvider;
    .param p3, "insetSide"    # I

    .prologue
    .line 2755
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2752
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 2756
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 2757
    iput p3, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 2758
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    .line 2759
    return-void
.end method

.method private accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V
    .locals 8
    .param p1, "collapseKey"    # I
    .param p3, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p4, "itemCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2867
    .local p2, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/DataUsageSummary$AppItem;>;"
    iget v1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2868
    .local v1, "uid":I
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 2869
    .local v0, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    if-nez v0, :cond_0

    .line 2870
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local v0    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-direct {v0, p1}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 2871
    .restart local v0    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    iput p4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    .line 2872
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2873
    iget v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2875
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$AppItem;->addUid(I)V

    .line 2876
    iget-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 2877
    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    iget-wide v4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2878
    iget-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iput-wide v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 2880
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 2920
    const/4 v0, 0x0

    return v0
.end method

.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 20
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 2766
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 2768
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 2769
    .local v6, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v12

    .line 2770
    .local v12, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 2772
    .local v10, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/DataUsageSummary$AppItem;>;"
    const/4 v7, 0x0

    .line 2773
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v14

    .line 2774
    .local v14, "size":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_9

    .line 2775
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 2778
    iget v0, v7, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v16, v0

    .line 2782
    .local v16, "uid":I
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 2783
    .local v17, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 2784
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2785
    new-instance v18, Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2786
    move/from16 v0, v17

    if-eq v0, v6, :cond_0

    .line 2788
    invoke-static/range {v17 .. v17}, Lcom/android/settings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    .line 2789
    .local v11, "managedKey":I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v10, v7, v1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    .line 2793
    .end local v11    # "managedKey":I
    :cond_0
    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 2774
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2773
    .end local v8    # "i":I
    .end local v14    # "size":I
    .end local v16    # "uid":I
    .end local v17    # "userId":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 2798
    .restart local v8    # "i":I
    .restart local v14    # "size":I
    .restart local v16    # "uid":I
    .restart local v17    # "userId":I
    :cond_3
    move/from16 v5, v16

    .line 2799
    .local v5, "collapseKey":I
    const/4 v4, 0x2

    .line 2812
    .local v4, "category":I
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v7, v4}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    goto :goto_2

    .line 2802
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_4
    invoke-static/range {v17 .. v17}, Lcom/android/settings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v5

    .line 2803
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x0

    .restart local v4    # "category":I
    goto :goto_3

    .line 2805
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_5
    const/16 v18, -0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, -0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, -0x64

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 2806
    :cond_6
    move/from16 v5, v16

    .line 2807
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_3

    .line 2809
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_7
    const/16 v5, 0x3e8

    .line 2810
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_3

    .line 2815
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_8
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2816
    const/16 v18, -0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, -0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x3e8

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 2819
    move/from16 v5, v16

    .line 2820
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .line 2821
    .restart local v4    # "category":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v7, v4}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    goto :goto_2

    .line 2827
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    .end local v16    # "uid":I
    .end local v17    # "userId":I
    :cond_9
    move-object/from16 v0, p2

    array-length v13, v0

    .line 2828
    .local v13, "restrictedUidsMax":I
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v13, :cond_c

    .line 2829
    aget v16, p2, v8

    .line 2831
    .restart local v16    # "uid":I
    new-instance v18, Landroid/os/UserHandle;

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 2828
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2835
    :cond_a
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 2836
    .local v9, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    if-nez v9, :cond_b

    .line 2837
    new-instance v9, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local v9    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    move/from16 v0, v16

    invoke-direct {v9, v0}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 2838
    .restart local v9    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    iput-wide v0, v9, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2840
    iget v0, v9, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2842
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v9, Lcom/android/settings/DataUsageSummary$AppItem;->restricted:Z

    goto :goto_5

    .line 2845
    .end local v9    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    .end local v16    # "uid":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_d

    .line 2846
    new-instance v15, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct {v15}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>()V

    .line 2847
    .local v15, "title":Lcom/android/settings/DataUsageSummary$AppItem;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    .line 2848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2851
    .end local v15    # "title":Lcom/android/settings/DataUsageSummary$AppItem;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2852
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 2853
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 2910
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 2911
    .local v0, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    iget v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    if-ne v2, v1, :cond_0

    .line 2914
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2933
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 2934
    .local v1, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 2935
    if-nez p2, :cond_0

    .line 2936
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    # invokes: Lcom/android/settings/DataUsageSummary;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v6, p3}, Lcom/android/settings/DataUsageSummary;->access$4200(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2940
    :cond_0
    const v6, 0x1020016

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2941
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x7f0a0cba

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2984
    .end local v5    # "title":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 2944
    :cond_1
    if-nez p2, :cond_2

    .line 2945
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040079

    invoke-virtual {v6, v7, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2948
    iget v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v6, :cond_2

    .line 2949
    iget v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v7, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v6, v2, v7, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2953
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2955
    .local v0, "context":Landroid/content/Context;
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2956
    .local v4, "text1":Landroid/widget/TextView;
    const v6, 0x102000d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 2960
    .local v3, "progress":Landroid/widget/ProgressBar;
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-static {v6, v1, p2}, Lcom/android/settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settings/net/UidDetailProvider;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 2962
    iget-boolean v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v6, :cond_4

    iget-wide v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    cmp-long v6, v6, v10

    if-gtz v6, :cond_4

    .line 2963
    const v6, 0x7f0a0cd4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2964
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2980
    :goto_1
    iget-wide v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_3

    iget-wide v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 2981
    .local v2, "percentTotal":I
    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 2966
    .end local v2    # "percentTotal":I
    :cond_4
    iget-wide v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2969
    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4300()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2970
    sget v6, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 2971
    iget-wide v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    # invokes: Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;
    invoke-static {v0, v6, v7}, Lcom/android/settings/DataUsageSummary;->access$4400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2977
    :cond_5
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 2972
    :cond_6
    sget v6, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    if-ne v6, v8, :cond_5

    .line 2973
    iget-wide v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    # invokes: Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;
    invoke-static {v0, v6, v7}, Lcom/android/settings/DataUsageSummary;->access$4500(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2902
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 2926
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2928
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
