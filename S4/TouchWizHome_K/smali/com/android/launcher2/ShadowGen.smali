.class public Lcom/android/launcher2/ShadowGen;
.super Ljava/lang/Object;
.source "ShadowGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ShadowGen$1;,
        Lcom/android/launcher2/ShadowGen$FolderGenThread;,
        Lcom/android/launcher2/ShadowGen$GenThread;,
        Lcom/android/launcher2/ShadowGen$QueuedBitmap;,
        Lcom/android/launcher2/ShadowGen$CallbackEntry;,
        Lcom/android/launcher2/ShadowGen$GeneratedCallback;
    }
.end annotation


# static fields
.field private static fovydiff:F

.field private static mAppIconSize:I

.field private static mAppShadowOffsetY:I

.field private static mFolderIconSize:I

.field private static mFolderShadowOffsetY:I

.field private static sInstance:Lcom/android/launcher2/ShadowGen;


# instance fields
.field private mFolderGenThread:Lcom/android/launcher2/ShadowGen$FolderGenThread;

.field private mFolderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/launcher2/ShadowGen$QueuedBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/launcher2/ShadowGen$QueuedBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 111
    sput v0, Lcom/android/launcher2/ShadowGen;->mAppIconSize:I

    .line 112
    sput v0, Lcom/android/launcher2/ShadowGen;->mFolderIconSize:I

    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/ShadowGen;->fovydiff:F

    .line 118
    new-instance v0, Lcom/android/launcher2/ShadowGen;

    invoke-direct {v0}, Lcom/android/launcher2/ShadowGen;-><init>()V

    sput-object v0, Lcom/android/launcher2/ShadowGen;->sInstance:Lcom/android/launcher2/ShadowGen;

    .line 256
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    .line 242
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mFolderQueue:Ljava/util/LinkedList;

    .line 655
    return-void
.end method

.method private Folderstart()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/android/launcher2/ShadowGen$FolderGenThread;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowGen$FolderGenThread;-><init>(Lcom/android/launcher2/ShadowGen;)V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mFolderGenThread:Lcom/android/launcher2/ShadowGen$FolderGenThread;

    .line 249
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mFolderGenThread:Lcom/android/launcher2/ShadowGen$FolderGenThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$FolderGenThread;->setDaemon(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mFolderGenThread:Lcom/android/launcher2/ShadowGen$FolderGenThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$FolderGenThread;->setPriority(I)V

    .line 251
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mFolderGenThread:Lcom/android/launcher2/ShadowGen$FolderGenThread;

    const-string v1, "FolderGenThread"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$FolderGenThread;->setName(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mFolderGenThread:Lcom/android/launcher2/ShadowGen$FolderGenThread;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowGen$FolderGenThread;->start()V

    .line 253
    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/launcher2/ShadowGen;->mAppShadowOffsetY:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/launcher2/ShadowGen;->mAppIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/ShadowGen;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/launcher2/ShadowGen;->mFolderShadowOffsetY:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/launcher2/ShadowGen;->mFolderIconSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/ShadowGen;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mFolderQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher2/ShadowGen;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/launcher2/ShadowGen;->sInstance:Lcom/android/launcher2/ShadowGen;

    return-object v0
.end method

.method public static native nCompositeLayer(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Z
.end method

.method public static native nExtractLayers([Landroid/graphics/Bitmap;I)Z
.end method

.method private start()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lcom/android/launcher2/ShadowGen$GenThread;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowGen$GenThread;-><init>(Lcom/android/launcher2/ShadowGen;)V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    .line 236
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->setDaemon(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->setPriority(I)V

    .line 238
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const-string v1, "ShadowGen"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->setName(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowGen$GenThread;->start()V

    .line 240
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 200
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v1, p0, Lcom/android/launcher2/ShadowGen;->mFolderQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mFolderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 203
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    return-void

    .line 200
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 203
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;Landroid/content/res/Resources;Z)V
    .locals 5
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/android/launcher2/ShadowGen$GeneratedCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "isFolder"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 153
    if-nez p3, :cond_0

    .line 154
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 157
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_0
    sget v2, Lcom/android/launcher2/ShadowGen;->mAppIconSize:I

    if-ne v2, v3, :cond_1

    .line 158
    const v2, 0x7f0e00c6

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/ShadowGen;->mAppIconSize:I

    .line 160
    const v2, 0x7f0c001f

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/ShadowGen;->mAppShadowOffsetY:I

    .line 162
    :cond_1
    sget v2, Lcom/android/launcher2/ShadowGen;->mFolderIconSize:I

    if-ne v2, v3, :cond_2

    .line 163
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getFolderWidth()I

    move-result v2

    sput v2, Lcom/android/launcher2/ShadowGen;->mFolderIconSize:I

    .line 165
    const v2, 0x7f0c0020

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/ShadowGen;->mFolderShadowOffsetY:I

    .line 168
    :cond_2
    new-instance v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;

    invoke-direct {v1, v4}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;-><init>(Lcom/android/launcher2/ShadowGen$1;)V

    .line 169
    .local v1, "qb":Lcom/android/launcher2/ShadowGen$QueuedBitmap;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    new-instance v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;

    invoke-direct {v0, v4}, Lcom/android/launcher2/ShadowGen$CallbackEntry;-><init>(Lcom/android/launcher2/ShadowGen$1;)V

    .line 171
    .local v0, "ce":Lcom/android/launcher2/ShadowGen$CallbackEntry;
    iput-object p2, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->callback:Lcom/android/launcher2/ShadowGen$GeneratedCallback;

    .line 172
    iput-object p3, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->handler:Landroid/os/Handler;

    .line 173
    iget-object v2, v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    if-eqz p5, :cond_5

    .line 177
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen;->mFolderQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mFolderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mFolderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 180
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mFolderGenThread:Lcom/android/launcher2/ShadowGen$FolderGenThread;

    if-nez v2, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen;->Folderstart()V

    .line 191
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    if-nez v2, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen;->start()V

    .line 195
    :cond_4
    return-void

    .line 180
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 182
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 183
    :try_start_2
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 185
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public startInBackground(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, -0x1

    .line 128
    sget v0, Lcom/android/launcher2/ShadowGen;->mAppIconSize:I

    if-ne v0, v1, :cond_0

    .line 129
    const v0, 0x7f0e00c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/ShadowGen;->mAppIconSize:I

    .line 131
    const v0, 0x7f0c001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/ShadowGen;->mAppShadowOffsetY:I

    .line 133
    :cond_0
    sget v0, Lcom/android/launcher2/ShadowGen;->mFolderIconSize:I

    if-ne v0, v1, :cond_1

    .line 134
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getFolderWidth()I

    move-result v0

    sput v0, Lcom/android/launcher2/ShadowGen;->mFolderIconSize:I

    .line 136
    const v0, 0x7f0c0020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/ShadowGen;->mFolderShadowOffsetY:I

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    if-nez v0, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen;->start()V

    .line 142
    :cond_2
    return-void
.end method
