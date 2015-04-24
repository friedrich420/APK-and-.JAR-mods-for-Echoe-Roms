.class public Lcom/android/settings/fingerprint/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field private mCurrentBytes:J

.field private mDestination:Ljava/lang/String;

.field private mID:I

.field private mPackageName:Ljava/lang/String;

.field private mProductName:Ljava/lang/String;

.field private mStatus:I

.field private mTotalBytes:J

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mID:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mPackageName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mProductName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mUri:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mDestination:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mStatus:I

    .line 20
    iput-wide v2, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mCurrentBytes:J

    .line 21
    iput-wide v2, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mTotalBytes:J

    .line 22
    return-void
.end method


# virtual methods
.method public getCurrentBytes()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mCurrentBytes:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mID:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mStatus:I

    return v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentBytes(J)V
    .locals 1
    .param p1, "currentBytes"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mCurrentBytes:J

    .line 78
    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 0
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mDestination:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mID:I

    .line 30
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mPackageName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mProductName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mStatus:I

    .line 70
    return-void
.end method

.method public setTotalBytes(J)V
    .locals 1
    .param p1, "totalBytes"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mTotalBytes:J

    .line 86
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadInfo;->mUri:Ljava/lang/String;

    .line 54
    return-void
.end method
