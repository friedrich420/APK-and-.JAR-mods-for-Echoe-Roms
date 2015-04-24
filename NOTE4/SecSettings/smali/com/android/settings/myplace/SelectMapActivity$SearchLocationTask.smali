.class Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;
.super Landroid/os/AsyncTask;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p2, "x1"    # Lcom/android/settings/myplace/SelectMapActivity$1;

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 500
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "locations"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    const/4 v1, 0x0

    .line 505
    .local v1, "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v3, 0x0

    :try_start_0
    aget-object v2, p1, v3

    .line 506
    .local v2, "location":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 507
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$1300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/location/Geocoder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 512
    .end local v2    # "location":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 500
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 519
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v14, v14, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v14}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v9

    .line 520
    .local v9, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 521
    .local v4, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v4}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 523
    const v12, 0x55d4a80

    .local v12, "minLat":I
    const v10, -0x55d4a80

    .line 524
    .local v10, "maxLat":I
    const v13, 0xaba9500

    .local v13, "minLon":I
    const v11, -0xaba9500

    .line 526
    .local v11, "maxLon":I
    const/4 v2, 0x0

    .line 527
    .local v2, "addr":Landroid/location/Address;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_0

    .line 528
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "addr":Landroid/location/Address;
    check-cast v2, Landroid/location/Address;

    .line 529
    .restart local v2    # "addr":Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v14, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I

    move-result v5

    .line 530
    .local v5, "lat":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v14, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I

    move-result v6

    .line 531
    .local v6, "lon":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v14, v5, v6, v15}, Lcom/android/settings/myplace/SelectMapActivity;->access$1500(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z

    .line 532
    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 533
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 534
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 535
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 527
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    .end local v5    # "lat":I
    .end local v6    # "lon":I
    :cond_0
    if-eqz v2, :cond_1

    .line 538
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "addr":Landroid/location/Address;
    check-cast v2, Landroid/location/Address;

    .line 539
    .restart local v2    # "addr":Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v14, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I

    move-result v7

    .line 540
    .local v7, "mFirstlat":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v14, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I

    move-result v8

    .line 541
    .local v8, "mFirstlon":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z
    invoke-static {v14, v7, v8}, Lcom/android/settings/myplace/SelectMapActivity;->access$1600(Lcom/android/settings/myplace/SelectMapActivity;II)Z

    .line 548
    .end local v2    # "addr":Landroid/location/Address;
    .end local v3    # "i":I
    .end local v4    # "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    .end local v7    # "mFirstlat":I
    .end local v8    # "mFirstlon":I
    .end local v9    # "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    .end local v10    # "maxLat":I
    .end local v11    # "maxLon":I
    .end local v12    # "minLat":I
    .end local v13    # "minLon":I
    :cond_1
    :goto_1
    return-void

    .line 545
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a198b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/myplace/SelectMapActivity;->access$800(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
