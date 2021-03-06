.class public Landroid/media/RemoteController$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method protected constructor <init>(Landroid/media/RemoteController;)V
    .registers 2

    .prologue
    .line 602
    iput-object p1, p0, this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V
    .registers 8
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "editableKeys"    # J

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 607
    iput-object p1, p0, this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    .line 608
    iput-object p2, p0, mEditorMetadata:Landroid/os/Bundle;

    .line 609
    iput-wide p3, p0, mEditableKeys:J

    .line 611
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, mEditorArtwork:Landroid/graphics/Bitmap;

    .line 613
    iget-object v0, p0, mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 614
    invoke-direct {p0, v2}, cleanupBitmapFromBundle(I)V

    .line 617
    :cond_1f
    iput-boolean v1, p0, mMetadataChanged:Z

    .line 618
    iput-boolean v1, p0, mArtworkChanged:Z

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, mApplied:Z

    .line 620
    return-void
.end method

.method static synthetic access$1800(Landroid/media/RemoteController$MetadataEditor;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteController$MetadataEditor;
    .param p1, "x1"    # I

    .prologue
    .line 598
    invoke-direct {p0, p1}, cleanupBitmapFromBundle(I)V

    return-void
.end method

.method private cleanupBitmapFromBundle(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 623
    sget-object v0, METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 624
    iget-object v0, p0, mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 626
    :cond_13
    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .registers 5

    .prologue
    .line 637
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, mMetadataChanged:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_41

    if-nez v1, :cond_7

    .line 656
    :goto_5
    monitor-exit p0

    return-void

    .line 640
    :cond_7
    :try_start_7
    # getter for: Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_41

    .line 641
    :try_start_c
    iget-object v1, p0, this$0:Landroid/media/RemoteController;

    # getter for: Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;
    invoke-static {v1}, Landroid/media/RemoteController;->access$300(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 642
    iget-object v1, p0, mEditorMetadata:Landroid/os/Bundle;

    const v3, 0x10000001

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 644
    const v1, 0x10000001

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Rating;

    .line 646
    .local v0, "rating":Landroid/media/Rating;
    if-eqz v0, :cond_3c

    .line 647
    iget-object v1, p0, this$0:Landroid/media/RemoteController;

    # getter for: Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;
    invoke-static {v1}, Landroid/media/RemoteController;->access$300(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    .line 651
    .end local v0    # "rating":Landroid/media/Rating;
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_44

    .line 655
    const/4 v1, 0x0

    :try_start_3e
    iput-boolean v1, p0, mApplied:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_41

    goto :goto_5

    .line 637
    :catchall_41
    move-exception v1

    monitor-exit p0

    throw v1

    .line 651
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_41
.end method
