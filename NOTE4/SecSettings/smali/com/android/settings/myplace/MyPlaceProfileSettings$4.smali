.class Lcom/android/settings/myplace/MyPlaceProfileSettings$4;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 460
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v6, 0x7f0a07d6

    invoke-virtual {v5, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 516
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isDuplicatePlaceName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v6, 0x7f0a1981

    invoke-virtual {v5, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 469
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "timeStamp":Ljava/lang/String;
    const-string v4, "location_type"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->fixedMenuNum:I
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 474
    :cond_2
    const-string v4, "name"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_3
    const-string v4, "address"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v4, "latitude"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 478
    const-string v4, "longitude"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 479
    const-string v4, "extra_data"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 480
    const-string v4, "wifi_name"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v4, "wifi_bssid"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v4, "bluetooth_name"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v4, "bluetooth_mac_address"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v5

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v4, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    const-string v4, "monitoring_status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 488
    const-string v4, "category"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v4, "timestamp_utc"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_ADDED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 496
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "uri"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 497
    const-string v4, "timestamp_utc"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->carmode:Z
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v4

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showToast()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 513
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const v6, 0x7f0a197d

    invoke-virtual {v5, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 515
    :cond_5
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    goto/16 :goto_0

    .line 500
    :cond_6
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 501
    const-string v4, "timestamp_utc"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.MYPLACE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I
    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 507
    const-string v4, "changed_id"

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I
    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v4, "timestamp_utc"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
