.class public final Landroid/media/MediaDrm$Certificate;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Certificate"
.end annotation


# instance fields
.field private mCertificateData:[B

.field private mWrappedKey:[B


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()[B
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, mCertificateData:[B

    return-object v0
.end method

.method public getWrappedPrivateKey()[B
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, mWrappedKey:[B

    return-object v0
.end method
