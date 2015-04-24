.class public Lcom/android/settings/fingerprint/PaypalPayment;
.super Landroid/app/Fragment;
.source "PaypalPayment.java"


# instance fields
.field private mBtnInstall:Landroid/widget/Button;

.field private mCancelDialog:Landroid/app/ProgressDialog;

.field private mChkBoxMfac:Landroid/widget/CheckBox;

.field private mChkBoxPaypal:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

.field private mInstallButtonStatus:I

.field private mLayoutProgressMfac:Landroid/widget/RelativeLayout;

.field private mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressMfac:Landroid/widget/ProgressBar;

.field private mProgressPaypal:Landroid/widget/ProgressBar;

.field private mTitleClick:Landroid/view/View$OnClickListener;

.field private mTitleMfac:Landroid/widget/TextView;

.field private mTitlePaypal:Landroid/widget/TextView;

.field private mTvCurrentSizeMfac:Landroid/widget/TextView;

.field private mTvCurrentSizePaypal:Landroid/widget/TextView;

.field private mTvInstallStatusMfac:Landroid/widget/TextView;

.field private mTvInstallStatusPaypal:Landroid/widget/TextView;

.field private mTvProgressStatusMfac:Landroid/widget/TextView;

.field private mTvProgressStatusPaypal:Landroid/widget/TextView;

.field private mTvTotalSizeMfac:Landroid/widget/TextView;

.field private mTvTotalSizePaypal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleClick:Landroid/view/View$OnClickListener;

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/PaypalPayment;->setRetainInstance(Z)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/PaypalPayment;)Lcom/android/settings/fingerprint/DownloadDBOpenHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/PaypalPayment;Lcom/android/settings/fingerprint/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;
    .param p1, "x1"    # Lcom/android/settings/fingerprint/DownloadInfo;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/PaypalPayment;->updateProgressUi(Lcom/android/settings/fingerprint/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->showCancelProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->stopDownloadService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/PaypalPayment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->updateInstallButton()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/PaypalPayment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->handleDownloadResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->dismissCancelProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/PaypalPayment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/fingerprint/PaypalPayment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->showDataUsingDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->startDownloadService()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/PaypalPayment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/PaypalPayment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/fingerprint/PaypalPayment;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private dismissCancelProgress()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mCancelDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mCancelDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mCancelDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mCancelDialog:Landroid/app/ProgressDialog;

    .line 748
    :cond_0
    return-void
.end method

.method public static getPref(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "false"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleDownloadResult()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 597
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressMfac:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 598
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 600
    const-string v4, "com.noknok.android.framework.service"

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 601
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 603
    :cond_0
    const-string v4, "com.paypal.android.p2pmobile"

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 604
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 607
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->updateInstallButton()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I

    .line 609
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->selectAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 610
    .local v0, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/fingerprint/DownloadInfo;>;"
    const-string v1, ""

    .line 611
    .local v1, "failedPackages":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/DownloadInfo;

    .line 613
    .local v3, "info":Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 616
    :cond_3
    const-string v4, "com.noknok.android.framework.service"

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a1e58

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 618
    :cond_4
    const-string v4, "com.paypal.android.p2pmobile"

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a1e5a

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 624
    .end local v3    # "info":Lcom/android/settings/fingerprint/DownloadInfo;
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 625
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/PaypalPayment;->showErrorDialog(Ljava/lang/String;)V

    .line 627
    :cond_6
    return-void
.end method

.method private initProgressUiFromDB()V
    .locals 4

    .prologue
    .line 370
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->selectAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    .local v0, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/fingerprint/DownloadInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fingerprint/DownloadInfo;

    .line 373
    .local v2, "info":Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/PaypalPayment;->updateProgressUi(Lcom/android/settings/fingerprint/DownloadInfo;)V

    goto :goto_0

    .line 375
    .end local v2    # "info":Lcom/android/settings/fingerprint/DownloadInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->updateInstallButton()I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I

    .line 376
    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 861
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 863
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 868
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 869
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 871
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 875
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private isInstalling()Z
    .locals 5

    .prologue
    .line 378
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->selectAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 380
    .local v0, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/fingerprint/DownloadInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fingerprint/DownloadInfo;

    .line 381
    .local v2, "info":Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 382
    const/4 v3, 0x1

    .line 385
    .end local v2    # "info":Lcom/android/settings/fingerprint/DownloadInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 762
    const/4 v0, 0x0

    .line 764
    .local v0, "bIsConnected":Z
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 767
    .local v3, "manager":Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 768
    .local v4, "mobile":Landroid/net/NetworkInfo;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 769
    .local v5, "wifi":Landroid/net/NetworkInfo;
    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 770
    .local v1, "bluetooth":Landroid/net/NetworkInfo;
    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 772
    .local v2, "ethernet":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 774
    :cond_3
    const/4 v0, 0x1

    .line 779
    :goto_0
    return v0

    .line 776
    :cond_4
    const-string v6, "PaypalPayment"

    const-string v7, "isNetworkConnected : network error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 752
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 753
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const-string v3, "com.paypal.android.p2pmobile"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1.0"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 758
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private prepareDownloadDB()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/16 v7, 0x9

    const/4 v6, 0x0

    .line 325
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->selectAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    .local v0, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/fingerprint/DownloadInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 328
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    const-string v5, "com.noknok.android.framework.service"

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->insert(Ljava/lang/String;I)V

    .line 329
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    const-string v5, "com.paypal.android.p2pmobile"

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->insert(Ljava/lang/String;I)V

    .line 367
    :cond_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fingerprint/DownloadInfo;

    .line 332
    .local v2, "info":Lcom/android/settings/fingerprint/DownloadInfo;
    const-string v4, "com.noknok.android.framework.service"

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 333
    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    if-ne v4, v7, :cond_3

    const-string v4, "com.noknok.android.framework.service"

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    if-eq v4, v8, :cond_4

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    if-eq v4, v9, :cond_4

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    if-eq v4, v10, :cond_4

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 339
    :cond_4
    new-instance v3, Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-direct {v3}, Lcom/android/settings/fingerprint/DownloadInfo;-><init>()V

    .line 340
    .local v3, "newInfo":Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/DownloadInfo;->setID(I)V

    .line 341
    const-string v4, "com.noknok.android.framework.service"

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/DownloadInfo;->setPackageName(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3, v6}, Lcom/android/settings/fingerprint/DownloadInfo;->setStatus(I)V

    .line 343
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v4, v3}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->update(Lcom/android/settings/fingerprint/DownloadInfo;)V

    goto :goto_0

    .line 344
    .end local v3    # "newInfo":Lcom/android/settings/fingerprint/DownloadInfo;
    :cond_5
    const-string v4, "com.noknok.android.framework.service"

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {v2, v7}, Lcom/android/settings/fingerprint/DownloadInfo;->setStatus(I)V

    .line 346
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v4, v2}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->update(Lcom/android/settings/fingerprint/DownloadInfo;)V

    goto :goto_0

    .line 348
    :cond_6
    const-string v4, "com.paypal.android.p2pmobile"

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    if-ne v4, v7, :cond_7

    const-string v4, "com.paypal.android.p2pmobile"

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    if-eq v4, v8, :cond_8

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    if-eq v4, v9, :cond_8

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    if-eq v4, v10, :cond_8

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    .line 355
    :cond_8
    new-instance v3, Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-direct {v3}, Lcom/android/settings/fingerprint/DownloadInfo;-><init>()V

    .line 356
    .restart local v3    # "newInfo":Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/DownloadInfo;->setID(I)V

    .line 357
    const-string v4, "com.paypal.android.p2pmobile"

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/DownloadInfo;->setPackageName(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3, v6}, Lcom/android/settings/fingerprint/DownloadInfo;->setStatus(I)V

    .line 359
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v4, v3}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->update(Lcom/android/settings/fingerprint/DownloadInfo;)V

    goto/16 :goto_0

    .line 360
    .end local v3    # "newInfo":Lcom/android/settings/fingerprint/DownloadInfo;
    :cond_9
    const-string v4, "com.paypal.android.p2pmobile"

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    invoke-virtual {v2, v7}, Lcom/android/settings/fingerprint/DownloadInfo;->setStatus(I)V

    .line 362
    iget-object v4, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v4, v2}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->update(Lcom/android/settings/fingerprint/DownloadInfo;)V

    goto/16 :goto_0
.end method

.method public static putPref(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void
.end method

.method private setDownloadProgress(Lcom/android/settings/fingerprint/DownloadInfo;)V
    .locals 12
    .param p1, "info"    # Lcom/android/settings/fingerprint/DownloadInfo;

    .prologue
    .line 708
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getCurrentBytes()J

    move-result-wide v4

    long-to-int v0, v4

    .line 709
    .local v0, "currentBytes":I
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    long-to-int v2, v4

    .line 711
    .local v2, "totalBytes":I
    if-nez v2, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    if-le v0, v2, :cond_2

    .line 716
    move v0, v2

    .line 719
    :cond_2
    mul-int/lit8 v3, v0, 0x64

    div-int v1, v3, v2

    .line 721
    .local v1, "progress":I
    const-string v3, "com.noknok.android.framework.service"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 722
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressMfac:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 723
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvCurrentSizeMfac:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-int/lit8 v8, v2, 0x64

    mul-int/2addr v8, v1

    int-to-double v8, v8

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a1e60

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvTotalSizeMfac:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " / %.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-double v8, v2

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a1e60

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 727
    :cond_3
    const-string v3, "com.paypal.android.p2pmobile"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressPaypal:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 729
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvCurrentSizePaypal:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-int/lit8 v8, v2, 0x64

    mul-int/2addr v8, v1

    int-to-double v8, v8

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a1e60

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvTotalSizePaypal:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " / %.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-double v8, v2

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a1e60

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setEnableInstallButton(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mBtnInstall:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 575
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mBtnInstall:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showCancelProgress()V
    .locals 4

    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a1e61

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 738
    .local v0, "message":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mCancelDialog:Landroid/app/ProgressDialog;

    .line 739
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mCancelDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mCancelDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 741
    return-void
.end method

.method private showDataUsingDialog()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 644
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 646
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 647
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040085

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 649
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f100168

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 650
    .local v3, "tvChargesWarning":Landroid/widget/TextView;
    const v5, 0x7f100169

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 652
    .local v0, "checkBoxDoNotShowAgain":Landroid/widget/CheckBox;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 654
    iget-object v5, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/fingerprint/PaypalPayment;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->isRoamingConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 656
    const v5, 0x7f0a1674

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 657
    const v5, 0x7f0a1e6a

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 658
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/fingerprint/PaypalPayment$7;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/fingerprint/PaypalPayment$7;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 693
    :goto_0
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/fingerprint/PaypalPayment$9;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/PaypalPayment$9;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 702
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 703
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 705
    :cond_0
    return-void

    .line 674
    :cond_1
    const v5, 0x7f0a1e69

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 675
    const v5, 0x7f0a1e6b

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 676
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    const v5, 0x7f0a1e68

    new-instance v6, Lcom/android/settings/fingerprint/PaypalPayment$8;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/fingerprint/PaypalPayment$8;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "failedPackages"    # Ljava/lang/String;

    .prologue
    .line 630
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, "build":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a1e6d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1e70

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/PaypalPayment$6;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/PaypalPayment$6;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 641
    return-void
.end method

.method private startDownloadService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 578
    const-string v1, "PaypalPayment"

    const-string v2, "startDownloadService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->prepareDownloadDB()V

    .line 580
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/fingerprint/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 583
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 584
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 585
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->updateInstallButton()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I

    .line 586
    return-void
.end method

.method private stopDownloadService()V
    .locals 3

    .prologue
    .line 589
    const-string v1, "PaypalPayment"

    const-string v2, "stopDownloadService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/fingerprint/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 591
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 593
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->updateInstallButton()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I

    .line 594
    return-void
.end method

.method private updateInstallButton()I
    .locals 5

    .prologue
    const v2, 0x7f0a1e5c

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 534
    const-string v1, "com.noknok.android.framework.service"

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.paypal.android.p2pmobile"

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mBtnInstall:Landroid/widget/Button;

    const v2, 0x7f0a1e77

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 538
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->setEnableInstallButton(Z)V

    .line 539
    const/4 v0, 0x2

    .line 564
    .local v0, "status":I
    :goto_0
    return v0

    .line 540
    .end local v0    # "status":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 541
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 543
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mBtnInstall:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 544
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->setEnableInstallButton(Z)V

    .line 545
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_0

    .line 548
    .end local v0    # "status":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mBtnInstall:Landroid/widget/Button;

    const v2, 0x7f0a1e5d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 549
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->isInstalling()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->setEnableInstallButton(Z)V

    .line 554
    :goto_1
    const/4 v0, 0x1

    .restart local v0    # "status":I
    goto :goto_0

    .line 552
    .end local v0    # "status":I
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->setEnableInstallButton(Z)V

    goto :goto_1

    .line 559
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mBtnInstall:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 560
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->setEnableInstallButton(Z)V

    .line 561
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_0
.end method

.method private updateProgressUi(Lcom/android/settings/fingerprint/DownloadInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/android/settings/fingerprint/DownloadInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const v5, 0x7f0a1e6f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 388
    const-string v0, "PaypalPayment"

    const-string v1, "updateProgressUi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-nez p1, :cond_1

    .line 391
    const-string v0, "PaypalPayment"

    const-string v1, "updateUiFromService - DownloadInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    :goto_1
    const-string v0, "PaypalPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUiFromService status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v0, "PaypalPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUiFromService status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 409
    :pswitch_1
    const-string v0, "com.noknok.android.framework.service"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressMfac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusMfac:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 413
    :cond_4
    const-string v0, "com.paypal.android.p2pmobile"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusPaypal:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e5a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 420
    :pswitch_2
    const-string v0, "com.noknok.android.framework.service"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 421
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressMfac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusMfac:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 423
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressMfac:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvProgressStatusMfac:Landroid/widget/TextView;

    const v1, 0x7f0a1e62

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 431
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvCurrentSizeMfac:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvTotalSizeMfac:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvCurrentSizePaypal:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvTotalSizePaypal:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 425
    :cond_6
    const-string v0, "com.paypal.android.p2pmobile"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusPaypal:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 428
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressPaypal:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvProgressStatusPaypal:Landroid/widget/TextView;

    const v1, 0x7f0a1e62

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 441
    :pswitch_3
    const-string v0, "com.noknok.android.framework.service"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 442
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressMfac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusMfac:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 444
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressMfac:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 445
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/PaypalPayment;->setDownloadProgress(Lcom/android/settings/fingerprint/DownloadInfo;)V

    .line 446
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvProgressStatusMfac:Landroid/widget/TextView;

    const v1, 0x7f0a1e63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 454
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 447
    :cond_8
    const-string v0, "com.paypal.android.p2pmobile"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 448
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusPaypal:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressPaypal:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 451
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/PaypalPayment;->setDownloadProgress(Lcom/android/settings/fingerprint/DownloadInfo;)V

    .line 452
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvProgressStatusPaypal:Landroid/widget/TextView;

    const v1, 0x7f0a1e63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 460
    :pswitch_4
    const-string v0, "com.noknok.android.framework.service"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 461
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressMfac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressMfac:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvProgressStatusMfac:Landroid/widget/TextView;

    const v1, 0x7f0a1e65

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 469
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 473
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/PaypalPayment;->setEnableInstallButton(Z)V

    goto/16 :goto_0

    .line 464
    :cond_a
    const-string v0, "com.paypal.android.p2pmobile"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 465
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressPaypal:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvProgressStatusPaypal:Landroid/widget/TextView;

    const v1, 0x7f0a1e65

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 476
    :pswitch_5
    const-string v0, "com.noknok.android.framework.service"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 477
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressMfac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    const-string v0, "com.noknok.android.framework.service"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 479
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusMfac:Landroid/widget/TextView;

    const v1, 0x7f0a1e6e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 506
    :cond_b
    :goto_5
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->setEnableInstallButton(Z)V

    goto/16 :goto_0

    .line 485
    :cond_c
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusMfac:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_5

    .line 490
    :cond_d
    const-string v0, "com.paypal.android.p2pmobile"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 491
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 492
    const-string v0, "com.paypal.android.p2pmobile"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 493
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusPaypal:Landroid/widget/TextView;

    const v1, 0x7f0a1e6e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_5

    .line 499
    :cond_e
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusPaypal:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e5a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_5

    .line 509
    :pswitch_6
    const-string v0, "com.noknok.android.framework.service"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 510
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressMfac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusMfac:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 524
    :cond_f
    :goto_6
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->setEnableInstallButton(Z)V

    goto/16 :goto_0

    .line 516
    :cond_10
    const-string v0, "com.paypal.android.p2pmobile"

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 517
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusPaypal:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 519
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e5a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_6

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected isRoamingConnected()Z
    .locals 5

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 801
    .local v0, "bIsConnected":Z
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 804
    .local v1, "manager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 806
    .local v2, "mobile":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 807
    const/4 v0, 0x1

    .line 810
    :cond_0
    return v0
.end method

.method protected isWifiNetworkConnected()Z
    .locals 5

    .prologue
    .line 783
    const/4 v2, 0x0

    .line 785
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 788
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 789
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 790
    const/4 v2, 0x1

    .line 793
    :cond_0
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "PaypalPayment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/PaypalPayment;->setRetainInstance(Z)V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 155
    const-string v2, "PaypalPayment"

    const-string v3, "onCreateView()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    .line 158
    new-instance v2, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    .line 159
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->prepareDownloadDB()V

    .line 163
    new-instance v2, Lcom/android/settings/fingerprint/PaypalPayment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/PaypalPayment$1;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "all_download_completed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "all_download_cancelled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v2, "update_download_information"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 192
    const v2, 0x7f040164

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f100315

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressMfac:Landroid/widget/RelativeLayout;

    .line 195
    const v2, 0x7f10031f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLayoutProgressPaypal:Landroid/widget/RelativeLayout;

    .line 197
    const v2, 0x7f100314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusMfac:Landroid/widget/TextView;

    .line 198
    const v2, 0x7f10031e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvInstallStatusPaypal:Landroid/widget/TextView;

    .line 200
    const v2, 0x7f100316

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressMfac:Landroid/widget/ProgressBar;

    .line 201
    const v2, 0x7f100320

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mProgressPaypal:Landroid/widget/ProgressBar;

    .line 203
    const v2, 0x7f100317

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvProgressStatusMfac:Landroid/widget/TextView;

    .line 204
    const v2, 0x7f100321

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvProgressStatusPaypal:Landroid/widget/TextView;

    .line 206
    const v2, 0x7f100319

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvCurrentSizeMfac:Landroid/widget/TextView;

    .line 207
    const v2, 0x7f100323

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvCurrentSizePaypal:Landroid/widget/TextView;

    .line 208
    const v2, 0x7f100318

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvTotalSizeMfac:Landroid/widget/TextView;

    .line 209
    const v2, 0x7f100322

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTvTotalSizePaypal:Landroid/widget/TextView;

    .line 212
    const v2, 0x7f100324

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mBtnInstall:Landroid/widget/Button;

    .line 213
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mBtnInstall:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/fingerprint/PaypalPayment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/PaypalPayment$2;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v2, 0x7f100311

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    .line 258
    const v2, 0x7f10031b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    .line 260
    const v2, 0x7f100312

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    .line 261
    const v2, 0x7f10031c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    .line 263
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/settings/fingerprint/PaypalPayment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/PaypalPayment$3;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/settings/fingerprint/PaypalPayment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/PaypalPayment$4;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleMfac:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitlePaypal:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 283
    new-instance v2, Lcom/android/settings/fingerprint/PaypalPayment$5;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/PaypalPayment$5;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mTitleClick:Landroid/view/View$OnClickListener;

    .line 317
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 105
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->close()V

    .line 118
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 132
    :pswitch_0
    invoke-super {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/fingerprint/PaypalPayment;->initProgressUiFromDB()V

    .line 124
    return-void
.end method
