.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field public static final sDeviceTypeImages:[I


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceType:I

.field private mTalkback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    return-void

    :array_0
    .array-data 4
        0x7f020367
        0x7f02036c
        0x7f02036f
        0x7f020366
        0x7f020372
        0x7f02036e
        0x7f020368
        0x7f02036d
        0x7f02036a
        0x7f020373
        0x7f020365
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    .line 68
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "tokens":[Ljava/lang/String;
    const v1, 0x7f04028f

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setLayoutResource(I)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v1, v0

    if-ge v1, v4, :cond_2

    .line 77
    :cond_1
    const-string v1, "WifiP2pPeer"

    const-string v2, "Malformed primaryDeviceType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_2
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    .line 81
    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    if-lt v1, v4, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_3

    .line 82
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    goto :goto_0

    .line 84
    :cond_3
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    goto :goto_0
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "statusArray":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    const v2, 0x7f0a05d4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 151
    const v2, 0x7f0a0603

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 116
    instance-of v2, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    if-eqz v2, :cond_2

    .line 121
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 124
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 127
    .local v0, "other":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_3

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, "deviceName":Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    .local v1, "summaryText":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    const v2, -0xff9467

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    const v2, -0x94908e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "#8e9ca3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->refresh()V

    .line 107
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 108
    return-void

    .line 93
    .end local v0    # "deviceName":Landroid/widget/TextView;
    .end local v1    # "summaryText":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    .restart local v0    # "deviceName":Landroid/widget/TextView;
    .restart local v1    # "summaryText":Landroid/widget/TextView;
    :cond_1
    const/high16 v2, -0x1000000

    goto :goto_1
.end method

.method public setTalkback(Z)V
    .locals 0
    .param p1, "talkback"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    .line 112
    return-void
.end method
