.class public Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
.super Landroid/app/Activity;
.source "WifiApTestConfigure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DBG:Z

.field private static final MAX_CLIENT:I


# instance fields
.field private CheckBoxChannel2g:Landroid/widget/CheckBox;

.field private CheckBoxChannel5g:Landroid/widget/CheckBox;

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel5g:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field private mHideSsid:Landroid/widget/CheckBox;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveBtn:Landroid/widget/Button;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSsid:Landroid/widget/EditText;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field private password:Ljava/lang/String;

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->DBG:Z

    .line 122
    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mMacaddrAcl:I

    .line 109
    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast2gChannel:I

    .line 110
    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I

    .line 111
    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    .line 112
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    .line 114
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    .line 115
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    .line 117
    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    .line 118
    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    .line 135
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast2gChannel:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    return p1
.end method

.method private getChgType()Z
    .locals 8

    .prologue
    .line 489
    const-string v0, "/sys/class/sec/switch/chg_type"

    .line 490
    .local v0, "CHG_TYPE_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 491
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 493
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 495
    const-string v5, "WifiApTestConfigure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    if-eqz v2, :cond_0

    .line 501
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 507
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 508
    :cond_2
    const/4 v5, 0x1

    .line 510
    :goto_1
    return v5

    .line 502
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 503
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 505
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 496
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 497
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    if-eqz v1, :cond_1

    .line 501
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 502
    :catch_2
    move-exception v4

    .line 503
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 499
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 500
    :goto_3
    if-eqz v1, :cond_3

    .line 501
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 504
    :cond_3
    :goto_4
    throw v5

    .line 502
    :catch_3
    move-exception v4

    .line 503
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 510
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 499
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 496
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    .line 125
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x2

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 5

    .prologue
    const v4, 0x7f1005bc

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 462
    const v1, 0x7f1005bb

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityMsg:Landroid/widget/TextView;

    .line 463
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    if-nez v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 475
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 320
    const v0, 0x7f1005b9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 324
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 340
    :cond_2
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 329
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x3

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 433
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 346
    :sswitch_1
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    const/16 v7, 0x91

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 349
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    .line 350
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 356
    :sswitch_2
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 357
    .local v1, "is2gChecked":Z
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 358
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 359
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    if-nez v1, :cond_1

    move v7, v9

    :cond_1
    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v6, v8

    .line 357
    goto :goto_1

    :cond_3
    move v8, v7

    .line 358
    goto :goto_2

    .line 362
    .end local v1    # "is2gChecked":Z
    :sswitch_3
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 363
    .local v2, "is5gChecked":Z
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    if-eqz v2, :cond_5

    move v6, v8

    :goto_3
    invoke-virtual {v10, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 364
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v2, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 365
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    if-nez v2, :cond_6

    :goto_4
    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v6, v7

    .line 363
    goto :goto_3

    :cond_6
    move v9, v7

    .line 365
    goto :goto_4

    .line 368
    .end local v2    # "is5gChecked":Z
    :sswitch_4
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 369
    .local v3, "mTempWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 370
    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 371
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 372
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 373
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 374
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    packed-switch v6, :pswitch_data_0

    .line 397
    :cond_7
    :goto_5
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_0

    .line 398
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 400
    sget-boolean v6, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->DBG:Z

    if-eqz v6, :cond_0

    .line 401
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 402
    .local v5, "wifiState":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    if-ne v5, v10, :cond_a

    .line 404
    :cond_8
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 406
    const-wide/16 v6, 0x258

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    :cond_9
    :goto_6
    sput-boolean v9, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 423
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 425
    const-wide/16 v6, 0x258

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "wifiState":I
    :pswitch_0
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_5

    .line 379
    :pswitch_1
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->set(I)V

    .line 380
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 381
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-eqz v6, :cond_7

    .line 382
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    .line 383
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_5

    .line 388
    :pswitch_2
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    .line 389
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 390
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-eqz v6, :cond_7

    .line 391
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    .line 392
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_5

    .line 407
    .restart local v5    # "wifiState":I
    :catch_1
    move-exception v0

    .line 408
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 411
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_a
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 412
    .local v4, "wifiApState":I
    const/16 v6, 0xc

    if-eq v4, v6, :cond_b

    const/16 v6, 0xd

    if-ne v4, v6, :cond_9

    .line 414
    :cond_b
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 416
    const-wide/16 v6, 0x258

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 417
    :catch_2
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1005b8 -> :sswitch_0
        0x7f1005bd -> :sswitch_1
        0x7f1005c0 -> :sswitch_2
        0x7f1005c1 -> :sswitch_3
        0x7f1005d1 -> :sswitch_4
    .end sparse-switch

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    const v2, 0x7f040273

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->setContentView(I)V

    .line 190
    const v2, 0x7f1005b9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    .line 193
    move-object v0, p0

    .line 194
    .local v0, "context":Landroid/content/Context;
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    .line 196
    new-instance v1, Lcom/android/settings/Utils$LengthFilter;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 197
    .local v1, "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    const v2, 0x7f1005b7

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    .line 198
    const v2, 0x7f100570

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    .line 199
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 200
    const v2, 0x7f1005b8

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Landroid/widget/CheckBox;

    .line 201
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 202
    const v2, 0x7f1005d1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSaveBtn:Landroid/widget/Button;

    .line 203
    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->DBG:Z

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSaveBtn:Landroid/widget/Button;

    const-string v3, "Save & Turn on Hotspot"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 211
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 212
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 214
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v3, 0x3

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 216
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    .line 217
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    .line 218
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    .line 219
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Landroid/widget/CheckBox;

    const-string v3, "Hide SSID"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_0
    const v2, 0x7f1005c2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    .line 237
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 238
    const v2, 0x7f1005c0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    .line 239
    const v2, 0x7f1005c1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    .line 240
    const v2, 0x7f1005c3

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    .line 300
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 303
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 305
    const v2, 0x7f1005c5

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->maxClientSpinner:Landroid/widget/Spinner;

    .line 306
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 307
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->maxClientSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->showSecurityFields()V

    .line 311
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSaveBtn:Landroid/widget/Button;

    const-string v3, "Save"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TestAP_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 439
    :sswitch_0
    iput p3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    .line 440
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->showSecurityFields()V

    goto :goto_0

    .line 443
    :sswitch_1
    iput p3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast2gChannel:I

    .line 444
    iput p3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    goto :goto_0

    .line 447
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    .line 449
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I

    goto :goto_0

    .line 452
    :sswitch_3
    iput p3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    goto :goto_0

    .line 437
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1005b9 -> :sswitch_0
        0x7f1005c2 -> :sswitch_1
        0x7f1005c3 -> :sswitch_2
        0x7f1005c5 -> :sswitch_3
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
