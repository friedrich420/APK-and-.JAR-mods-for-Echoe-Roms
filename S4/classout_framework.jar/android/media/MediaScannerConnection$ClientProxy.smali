.class Landroid/media/MediaScannerConnection$ClientProxy;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClientProxy"
.end annotation


# instance fields
.field final mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mConnection:Landroid/media/MediaScannerConnection;

.field final mMimeTypes:[Ljava/lang/String;

.field mNextPath:I

.field final mPaths:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .registers 4
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, mPaths:[Ljava/lang/String;

    .line 190
    iput-object p2, p0, mMimeTypes:[Ljava/lang/String;

    .line 191
    iput-object p3, p0, mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 192
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 1

    .prologue
    .line 195
    invoke-virtual {p0}, scanNextPath()V

    .line 196
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 199
    iget-object v0, p0, mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    if-eqz v0, :cond_9

    .line 200
    iget-object v0, p0, mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    :cond_9
    invoke-virtual {p0}, scanNextPath()V

    .line 203
    return-void
.end method

.method scanNextPath()V
    .registers 5

    .prologue
    .line 206
    iget v1, p0, mNextPath:I

    iget-object v2, p0, mPaths:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_d

    .line 207
    iget-object v1, p0, mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 213
    :goto_c
    return-void

    .line 210
    :cond_d
    iget-object v1, p0, mMimeTypes:[Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v1, p0, mMimeTypes:[Ljava/lang/String;

    iget v2, p0, mNextPath:I

    aget-object v0, v1, v2

    .line 211
    .local v0, "mimeType":Ljava/lang/String;
    :goto_17
    iget-object v1, p0, mConnection:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, mPaths:[Ljava/lang/String;

    iget v3, p0, mNextPath:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget v1, p0, mNextPath:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mNextPath:I

    goto :goto_c

    .line 210
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_29
    const/4 v0, 0x0

    goto :goto_17
.end method
