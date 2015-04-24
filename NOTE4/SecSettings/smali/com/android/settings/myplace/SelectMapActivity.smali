.class public Lcom/android/settings/myplace/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCloseIcon:Landroid/widget/ImageButton;

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mIsTabletConfig:Z

.field private mLatitude:I

.field private mLocation:Ljava/lang/String;

.field private mLocationDisabledDialog:Landroid/app/AlertDialog;

.field private mLongitude:I

.field private mMapMode:I

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mMapZoomLevel:I

.field private mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

.field private mResearch:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchIcon:Landroid/widget/ImageView;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSearchViewContainer:Landroid/widget/FrameLayout;

.field private mSnippet:Ljava/lang/String;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 80
    const-string v0, "SelectMapActivity"

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    .line 102
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    .line 103
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    .line 107
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 108
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 109
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    .line 126
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapZoomLevel:I

    .line 493
    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$10;

    invoke-direct {v0, p0}, Lcom/android/settings/myplace/SelectMapActivity$10;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 728
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/myplace/SelectMapActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # D

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/SelectMapActivity;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/myplace/SelectMapActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/myplace/SelectMapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->showLocationDisabledDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    return-void
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 7
    .param p1, "lat"    # I
    .param p2, "lon"    # I
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 570
    .local v1, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 571
    .local v0, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/android/settings/myplace/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 573
    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 574
    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 575
    iput-object p3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 578
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 579
    .local v2, "point":Lcom/google/android/maps/GeoPoint;
    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v4, v6, [Lcom/google/android/maps/GeoPoint;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 581
    return v6
.end method

.method private convToDouble(I)D
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 556
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 552
    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 23
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 448
    .local v14, "mTrimLocation":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    .line 449
    :cond_0
    const/16 v20, 0x0

    .line 490
    :goto_0
    return v20

    .line 452
    :cond_1
    new-instance v6, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 453
    .local v6, "geo":Landroid/location/Geocoder;
    const v18, 0x55d4a80

    .local v18, "minLat":I
    const v16, -0x55d4a80

    .line 454
    .local v16, "maxLat":I
    const v19, 0xaba9500

    .local v19, "minLon":I
    const v17, -0xaba9500

    .line 457
    .local v17, "maxLon":I
    const/16 v20, 0x5

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 459
    .local v10, "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v15

    .line 462
    .local v15, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 463
    .local v8, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v8}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 465
    const/4 v4, 0x0

    .line 466
    .local v4, "addr":Landroid/location/Address;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_2

    .line 467
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "addr":Landroid/location/Address;
    check-cast v4, Landroid/location/Address;

    .line 468
    .restart local v4    # "addr":Landroid/location/Address;
    invoke-virtual {v4}, Landroid/location/Address;->getLatitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v9

    .line 469
    .local v9, "lat":I
    invoke-virtual {v4}, Landroid/location/Address;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v11

    .line 470
    .local v11, "lon":I
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v11, v1}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 471
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 472
    move/from16 v0, v16

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 473
    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 474
    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 466
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 476
    .end local v9    # "lat":I
    .end local v11    # "lon":I
    :cond_2
    if-eqz v4, :cond_3

    .line 477
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "addr":Landroid/location/Address;
    check-cast v4, Landroid/location/Address;

    .line 478
    .restart local v4    # "addr":Landroid/location/Address;
    invoke-virtual {v4}, Landroid/location/Address;->getLatitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v12

    .line 479
    .local v12, "mFirstlat":I
    invoke-virtual {v4}, Landroid/location/Address;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v13

    .line 480
    .local v13, "mFirstlon":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 490
    .end local v4    # "addr":Landroid/location/Address;
    .end local v7    # "i":I
    .end local v8    # "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    .end local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v12    # "mFirstlat":I
    .end local v13    # "mFirstlon":I
    .end local v15    # "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 484
    .restart local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a198b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 487
    .end local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v5

    .line 488
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .param p1, "latitude"    # I
    .param p2, "longitude"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "snippet"    # Ljava/lang/String;

    .prologue
    .line 585
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 586
    .local v1, "point":Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .local v0, "overlay":Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 588
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 559
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 561
    .local v2, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 562
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 563
    .local v1, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(II)Z
    .locals 5
    .param p1, "lat"    # I
    .param p2, "lon"    # I

    .prologue
    const/4 v4, 0x1

    .line 601
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 603
    .local v0, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 604
    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v2, v4, [Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 605
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 606
    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 607
    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 608
    return v4
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const/4 v3, 0x1

    .line 593
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 594
    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 595
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 596
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 597
    return v3
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 426
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    if-eqz v2, :cond_0

    .line 436
    :cond_2
    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 437
    iput-boolean v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    .line 440
    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 442
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 443
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setMyLocationOverlay()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 885
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$11;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$11;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MyLocationOverlay;->runOnFirstFix(Ljava/lang/Runnable;)Z

    .line 911
    return-void
.end method

.method private showLocationDisabledDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1007
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1009
    iput-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 1012
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a198d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a198e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0aa3

    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$14;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/SelectMapActivity$14;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01ce

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 1024
    return-void
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 13
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 691
    const-string v12, ""

    .line 692
    .local v12, "location":Ljava/lang/String;
    const/4 v9, 0x0

    .line 695
    .local v9, "data":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fa_FA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa_IR"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 702
    :cond_0
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 703
    .local v1, "geoCoder":Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 705
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 706
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 708
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 709
    .local v8, "addressLines":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-gt v11, v8, :cond_3

    .line 710
    invoke-virtual {v0, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 711
    .local v7, "addressLine":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 712
    if-nez v11, :cond_2

    .line 713
    move-object v12, v7

    .line 709
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 715
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 721
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "geoCoder":Landroid/location/Geocoder;
    .end local v7    # "addressLine":Ljava/lang/String;
    .end local v8    # "addressLines":I
    .end local v11    # "i":I
    :catch_0
    move-exception v10

    .line 722
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 725
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3
    return-object v12
.end method


# virtual methods
.method protected captureMap()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 625
    iget-object v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5, v4}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 626
    iget-object v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 627
    .local v0, "saved":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v3

    .line 628
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 629
    .local v1, "x":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 630
    .local v2, "y":I
    if-gez v2, :cond_2

    .line 631
    const/4 v2, 0x0

    .line 637
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    add-int/2addr v6, v2

    if-lt v5, v6, :cond_0

    .line 639
    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    move v3, v4

    .line 640
    goto :goto_0
.end method

.method public configureActionBar()V
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    .line 347
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 350
    return-void
.end method

.method protected doFinish()V
    .locals 5

    .prologue
    .line 645
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 648
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "latitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v2, "longitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v2, "location"

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 660
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 661
    const-string v2, "map"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 664
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/myplace/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    .line 666
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 975
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->invalidateOptionsMenu()V

    .line 977
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    :try_start_0
    const-string v4, "android.os.AsyncTask"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v6, 0x7f0207dd

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setIcon(I)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v6, 0x7f0a0952

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/16 v6, 0xe

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "location"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 148
    const-string v4, "mode"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    .line 149
    const-string v4, "map_latitude"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 150
    const-string v4, "map_longtitude"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 151
    const v4, 0x7f040203

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->setContentView(I)V

    .line 153
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    .line 155
    new-instance v4, Landroid/location/Geocoder;

    invoke-direct {v4, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 157
    const v4, 0x7f1004b9

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/MapView;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 158
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4, v7}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 160
    const v4, 0x7f1004b3

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    .line 161
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 162
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 163
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$1;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 176
    const v4, 0x7f1004b5

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    .line 177
    const v4, 0x7f1004b6

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    .line 178
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$2;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v4, 0x7f1004b4

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;

    .line 204
    const v4, 0x7f10042c

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 205
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const v6, 0x10000003

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 206
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$3;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$3;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v4, v6, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$4;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 224
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$5;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v4, "       "

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 253
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    .line 254
    .local v2, "mSearchHint":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 257
    :cond_1
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$6;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$6;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 281
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v6, "My_Location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 283
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x1060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 287
    :goto_1
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 289
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    if-lez v1, :cond_8

    .end local v1    # "length":I
    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 292
    :cond_2
    const v4, 0x7f1004b7

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 293
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/myplace/SelectMapActivity$7;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/SelectMapActivity$7;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v4, 0x7f1004b8

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    .line 304
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/myplace/SelectMapActivity$8;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/SelectMapActivity$8;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    .line 333
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 334
    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 337
    :cond_3
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v5, "My_Location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 338
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    .line 341
    :cond_5
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->configureActionBar()V

    .line 343
    :cond_6
    return-void

    .line 285
    :cond_7
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_1

    .restart local v1    # "length":I
    :cond_8
    move v1, v5

    .line 289
    goto/16 :goto_2

    .line 137
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "length":I
    .end local v2    # "mSearchHint":Ljava/lang/CharSequence;
    .end local v3    # "ssb":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 917
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 919
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 923
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    .line 924
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 925
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 926
    const v2, 0x7f10010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mcancelButton:Landroid/widget/Button;

    .line 927
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mcancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$12;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$12;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    const v2, 0x7f10010c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    .line 938
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, "mEditboxText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 940
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 942
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0a0df1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 943
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$13;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$13;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    .end local v0    # "customView":Landroid/view/View;
    .end local v1    # "mEditboxText":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    if-nez v2, :cond_2

    .line 967
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 968
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 970
    :cond_2
    return v5

    .line 957
    :cond_3
    const v2, 0x7f0a01ce

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 959
    const v2, 0x7f0a11e0

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 416
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 422
    :goto_0
    return v0

    .line 418
    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 419
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    goto :goto_0

    .line 422
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 981
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1002
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 983
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    .line 987
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 991
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->doFinish()V

    goto :goto_0

    .line 995
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 996
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 997
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 999
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    .line 981
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
        0x7f10010b -> :sswitch_2
        0x7f10010c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 386
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 392
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 393
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 394
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 408
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 409
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 410
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 411
    const-string v0, "snippet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 412
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 354
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 356
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->initMarker()Z

    .line 358
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    if-eqz v0, :cond_3

    .line 359
    :cond_0
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    const-string v2, "here"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 360
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 377
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 378
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 379
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 381
    :cond_2
    return-void

    .line 362
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$9;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$9;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v1, "My_Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v0, :cond_4

    .line 371
    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 399
    const-string v0, "location"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v0, "latitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    const-string v0, "longitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string v0, "snippet"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method
