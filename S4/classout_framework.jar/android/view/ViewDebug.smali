.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$DumpZ;,
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final REMOTE_COMMAND_DUMP_Z:Ljava/lang/String; = "DUMPZ"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 347
    sput-object v0, mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 348
    sput-object v0, mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1713
    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1163
    instance-of v6, p1, Landroid/view/View;

    if-nez v6, :cond_c

    .line 1164
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1184
    :goto_b
    return-object v6

    :cond_c
    move-object v5, p1

    .line 1167
    check-cast v5, Landroid/view/View;

    .line 1168
    .local v5, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewDebug$7;

    invoke-direct {v0, p0, v5}, Landroid/view/ViewDebug$7;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    .line 1174
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1176
    .local v2, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1178
    .local v3, "handler":Landroid/os/Handler;
    if-nez v3, :cond_28

    .line 1179
    new-instance v3, Landroid/os/Handler;

    .end local v3    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1181
    .restart local v3    # "handler":Landroid/os/Handler;
    :cond_28
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1184
    :goto_2b
    const-wide/16 v6, 0xfa0

    :try_start_2d
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2d .. :try_end_32} :catch_34
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_32} :catch_58
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2d .. :try_end_32} :catch_4f

    move-result-object v6

    goto :goto_b

    .line 1185
    :catch_34
    move-exception v1

    .line 1186
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 1187
    .local v4, "t":Ljava/lang/Throwable;
    instance-of v6, v4, Ljava/lang/IllegalAccessException;

    if-eqz v6, :cond_40

    .line 1188
    check-cast v4, Ljava/lang/IllegalAccessException;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 1190
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_40
    instance-of v6, v4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_47

    .line 1191
    check-cast v4, Ljava/lang/reflect/InvocationTargetException;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 1193
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_47
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected exception"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1196
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_4f
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected cancellation exception"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1194
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_58
    move-exception v6

    goto :goto_2b
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .registers 9
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "captureView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 790
    const/4 v3, 0x0

    invoke-static {p2, v3}, performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 792
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1d

    .line 793
    const-string v3, "View"

    const-string v4, "Failed to create capture bitmap!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 800
    :cond_1d
    const/4 v1, 0x0

    .line 802
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_1e
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_39

    .line 803
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_26
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 804
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_43

    .line 806
    if-eqz v2, :cond_35

    .line 807
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 809
    :cond_35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 811
    return-void

    .line 806
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_39
    move-exception v3

    :goto_3a
    if-eqz v1, :cond_3f

    .line 807
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 809
    :cond_3f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v3

    .line 806
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_43
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_3a
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-static {p0, p2}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 784
    .local v0, "captureView":Landroid/view/View;
    invoke-static {p0, p1, v0}, capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 785
    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .registers 5
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2a

    .line 704
    .local v0, "outRect":Landroid/graphics/Rect;
    :try_start_5
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_2f
    .catchall {:try_start_5 .. :try_end_10} :catchall_2a

    .line 709
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 710
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 712
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 714
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    .line 716
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 718
    return-void

    .line 716
    .end local v0    # "outRect":Landroid/graphics/Rect;
    :catchall_2a
    move-exception v1

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    throw v1

    .line 705
    .restart local v0    # "outRect":Landroid/graphics/Rect;
    :catch_2f
    move-exception v1

    goto :goto_10
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_91

    if-eqz p2, :cond_91

    const/4 v6, 0x1

    .line 725
    .local v6, "localVisible":Z
    :goto_9
    iget v10, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_79

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 727
    .local v5, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 728
    .local v7, "name":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2c

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 732
    :cond_2c
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 733
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 734
    if-eqz v6, :cond_94

    const/4 v10, 0x1

    :goto_36
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 736
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 738
    .local v9, "position":[I
    invoke-virtual {p0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 740
    const/4 v10, 0x0

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 741
    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 742
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 744
    const/4 v10, 0x1

    invoke-static {p0, v10}, performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 745
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_76

    .line 746
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 748
    .local v0, "arrayOut":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 749
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 750
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 752
    .end local v0    # "arrayOut":Ljava/io/ByteArrayOutputStream;
    :cond_76
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 755
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "position":[I
    :cond_79
    instance-of v10, p0, Landroid/view/ViewGroup;

    if-eqz v10, :cond_96

    move-object v3, p0

    .line 756
    check-cast v3, Landroid/view/ViewGroup;

    .line 757
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 759
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_85
    if-ge v4, v2, :cond_96

    .line 760
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, v6}, captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 759
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 723
    .end local v2    # "count":I
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    .end local v6    # "localVisible":Z
    :cond_91
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 734
    .restart local v5    # "id":I
    .restart local v6    # "localVisible":Z
    .restart local v7    # "name":Ljava/lang/String;
    :cond_94
    const/4 v10, 0x0

    goto :goto_36

    .line 764
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_96
    iget-object v10, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v10, :cond_a3

    .line 765
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    iget-object v8, v10, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 766
    .local v8, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static {v8, p1, v6}, captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 768
    .end local v8    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_a3
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1600
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_6

    .line 1601
    const-string/jumbo v7, "null"

    .line 1629
    :goto_5
    return-object v7

    .line 1604
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1605
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1607
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v3

    .line 1608
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v0, :cond_4a

    .line 1609
    aget-object v1, v3, v4

    .line 1611
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_15
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1613
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    if-eqz v2, :cond_41

    .line 1618
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1619
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    .end local v6    # "value":Ljava/lang/String;
    :goto_39
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1608
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1621
    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_41
    const-string/jumbo v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_47} :catch_48

    goto :goto_39

    .line 1624
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :catch_48
    move-exception v7

    goto :goto_3e

    .line 1629
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1557
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_6

    .line 1558
    const-string/jumbo v9, "null"

    .line 1596
    :goto_5
    return-object v9

    .line 1561
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1562
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1564
    .local v4, "methods":[Ljava/lang/reflect/Method;
    array-length v0, v4

    .line 1565
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_80

    .line 1566
    aget-object v2, v4, v1

    .line 1568
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :try_start_16
    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1569
    .local v3, "methodValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1571
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1572
    .local v5, "property":Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 1574
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v9}, capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1576
    .restart local v3    # "methodValue":Ljava/lang/Object;
    .restart local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4f
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    const-string v9, "()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    if-eqz v3, :cond_77

    .line 1581
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, "\\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1582
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    .end local v8    # "value":Ljava/lang/String;
    :goto_6f
    const-string v9, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 1588
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_75
    move-exception v9

    goto :goto_4c

    .line 1584
    .restart local v3    # "methodValue":Ljava/lang/Object;
    .restart local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_77
    const-string/jumbo v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_7d} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_7d} :catch_7e

    goto :goto_6f

    .line 1591
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_7e
    move-exception v9

    goto :goto_4c

    .line 1596
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1495
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_b

    .line 1496
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1498
    :cond_b
    sget-object v6, mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1500
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1501
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_17

    move-object v3, v2

    .line 1520
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .local v3, "fields":[Ljava/lang/reflect/Field;
    :goto_16
    return-object v3

    .line 1505
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v4, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1508
    array-length v0, v2

    .line 1509
    .local v0, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    if-ge v5, v0, :cond_38

    .line 1510
    aget-object v1, v2, v5

    .line 1511
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1512
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1513
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1517
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1518
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1520
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_16
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1524
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_b

    .line 1525
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1527
    :cond_b
    sget-object v3, mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1529
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1530
    .local v5, "methods":[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_17

    move-object v6, v5

    .line 1551
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .local v6, "methods":[Ljava/lang/reflect/Method;
    :goto_16
    return-object v6

    .line 1534
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1537
    array-length v0, v5

    .line 1538
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v0, :cond_47

    .line 1539
    aget-object v4, v5, v2

    .line 1540
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_44

    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_44

    .line 1543
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1544
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1548
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1549
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1551
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_16
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 468
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 470
    const-string v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 471
    invoke-static {p0, v3, v4, p3}, dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    .line 495
    :cond_11
    :goto_11
    return-void

    .line 472
    :cond_12
    const-string v1, "dump_s"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 474
    invoke-static {p0, v3, v4, p3}, dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto :goto_11

    .line 475
    :cond_28
    const-string v1, "DUMP_THEME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 476
    invoke-static {p0, p3}, dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_11

    .line 477
    :cond_34
    const-string v1, "DUMPZ"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 478
    # invokes: Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V
    invoke-static {p0, p3}, Landroid/view/ViewDebug$DumpZ;->access$000(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_11

    .line 479
    :cond_40
    const-string v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 480
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_11

    .line 482
    :cond_51
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "params":[Ljava/lang/String;
    const-string v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 484
    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_11

    .line 485
    :cond_65
    const-string v1, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 486
    aget-object v1, v0, v3

    invoke-static {p0, v1}, outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_11

    .line 487
    :cond_73
    const-string v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 488
    aget-object v1, v0, v3

    invoke-static {p0, v1}, invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_11

    .line 489
    :cond_81
    const-string v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 490
    aget-object v1, v0, v3

    invoke-static {p0, v1}, requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_11

    .line 491
    :cond_8f
    const-string v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 492
    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .registers 14
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    const/4 v8, 0x0

    .line 851
    .local v8, "out":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, p3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_35
    .catchall {:try_start_1 .. :try_end_11} :catchall_44

    .line 852
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_11
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 853
    .local v9, "view":Landroid/view/View;
    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 854
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 855
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 858
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_27
    const-string v1, "DONE."

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_4e
    .catchall {:try_start_11 .. :try_end_2f} :catchall_4c

    .line 863
    if-eqz v3, :cond_34

    .line 864
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 867
    .end local v9    # "view":Landroid/view/View;
    :cond_34
    :goto_34
    return-void

    .line 860
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catch_35
    move-exception v7

    move-object v3, v8

    .line 861
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    .local v7, "e":Ljava/lang/Exception;
    :goto_37
    :try_start_37
    const-string v1, "View"

    const-string v4, "Problem dumping the view:"

    invoke-static {v1, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_4c

    .line 863
    if-eqz v3, :cond_34

    .line 864
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_34

    .line 863
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catchall_44
    move-exception v1

    move-object v3, v8

    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_46
    if-eqz v3, :cond_4b

    .line 864
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_4b
    throw v1

    .line 863
    :catchall_4c
    move-exception v1

    goto :goto_46

    .line 860
    :catch_4e
    move-exception v7

    goto :goto_37
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 1640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1641
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1642
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v2}, capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    const-string v2, ""

    invoke-static {p1, v0, v2}, capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    return-void
.end method

.method private static dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/IGLViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1028
    invoke-static {p0, p1, p2, p3, p4}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1040
    :cond_6
    return-void

    .line 1032
    :cond_7
    invoke-interface {p1}, Landroid/view/IGLViewGroup;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1033
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/IGLViewGroup;

    if-eqz v2, :cond_25

    .line 1034
    check-cast v1, Landroid/view/IGLViewGroup;

    .end local v1    # "obj":Ljava/lang/Object;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2, p4}, dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    goto :goto_f

    .line 1036
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_25
    instance-of v2, v1, Landroid/view/IGLView;

    if-eqz v2, :cond_f

    .line 1037
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2, p4}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_f
.end method

.method private static dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1014
    invoke-static {p0, p1, p2, p3, p4}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1023
    :cond_6
    :goto_6
    return-void

    .line 1018
    :cond_7
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    .line 1019
    .local v1, "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    if-eqz v1, :cond_6

    instance-of v2, v1, Landroid/view/IGLContext;

    if-eqz v2, :cond_6

    .line 1020
    check-cast v1, Landroid/view/IGLContext;

    .end local v1    # "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    invoke-interface {v1}, Landroid/view/IGLContext;->getGLRootView()Landroid/view/IGLViewGroup;

    move-result-object v0

    .line 1021
    .local v0, "group":Landroid/view/IGLViewGroup;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p4}, dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    goto :goto_6
.end method

.method public static dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    const/4 v3, 0x0

    .line 876
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v6, 0x8000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_73
    .catchall {:try_start_1 .. :try_end_11} :catchall_81

    .line 877
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v5, v6}, getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "attributes":[Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 880
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    array-length v5, v0

    if-ge v2, v5, :cond_64

    .line 881
    aget-object v5, v0, v2

    if-eqz v5, :cond_61

    .line 882
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 883
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 880
    :cond_61
    add-int/lit8 v2, v2, 0x2

    goto :goto_28

    .line 887
    .end local v2    # "i":I
    :cond_64
    const-string v5, "DONE."

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_6c} :catch_8b
    .catchall {:try_start_11 .. :try_end_6c} :catchall_88

    .line 892
    if-eqz v4, :cond_8e

    .line 893
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 896
    .end local v0    # "attributes":[Ljava/lang/String;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_72
    :goto_72
    return-void

    .line 889
    :catch_73
    move-exception v1

    .line 890
    .local v1, "e":Ljava/lang/Exception;
    :goto_74
    :try_start_74
    const-string v5, "View"

    const-string v6, "Problem dumping View Theme:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_81

    .line 892
    if-eqz v3, :cond_72

    .line 893
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_72

    .line 892
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_81
    move-exception v5

    :goto_82
    if-eqz v3, :cond_87

    .line 893
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_87
    throw v5

    .line 892
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_88
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_82

    .line 889
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_8b
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_74

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "attributes":[Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_8e
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_72
.end method

.method private static dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1046
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_b

    .line 1047
    const/16 v3, 0x20

    :try_start_5
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1046
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1049
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "className":Ljava/lang/String;
    const-string v3, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1051
    const-string v0, "ViewOverlay"

    .line 1053
    :cond_1d
    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1054
    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1056
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1057
    if-eqz p4, :cond_3a

    .line 1058
    invoke-static {p0, p1, p2}, dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1060
    :cond_3a
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3d} :catch_3f

    .line 1065
    const/4 v3, 0x1

    .end local v0    # "className":Ljava/lang/String;
    :goto_3e
    return v3

    .line 1061
    :catch_3f
    move-exception v1

    .line 1062
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "View"

    const-string v4, "Error while dumping hierarchy tree"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v3, 0x0

    goto :goto_3e
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    .prologue
    .line 980
    invoke-static {p0, p1, p2, p3, p5}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1009
    .end local p1    # "group":Landroid/view/ViewGroup;
    :cond_6
    :goto_6
    return-void

    .line 984
    .restart local p1    # "group":Landroid/view/ViewGroup;
    :cond_7
    if-nez p4, :cond_6

    .line 988
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 989
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e
    if-ge v7, v6, :cond_4d

    .line 990
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 991
    .local v9, "view":Landroid/view/View;
    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3a

    move-object v1, v9

    .line 992
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 999
    :goto_24
    iget-object v0, v9, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_37

    .line 1000
    invoke-virtual {v9}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v8

    .line 1001
    .local v8, "overlay":Landroid/view/ViewOverlay;
    iget-object v1, v8, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 1002
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    add-int/lit8 v3, p3, 0x2

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 989
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    .end local v8    # "overlay":Landroid/view/ViewOverlay;
    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 994
    :cond_3a
    instance-of v0, v9, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_47

    move-object v0, v9

    .line 995
    check-cast v0, Landroid/opengl/GLSurfaceView;

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p5}, dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V

    goto :goto_24

    .line 997
    :cond_47
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v9, p2, v0, p5}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_24

    .line 1006
    .end local v9    # "view":Landroid/view/View;
    :cond_4d
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_6

    .line 1007
    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    .end local p1    # "group":Landroid/view/ViewGroup;
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    goto :goto_6
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    if-nez p1, :cond_19

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=4,null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1158
    :goto_18
    return-void

    .line 1152
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1154
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    invoke-static {p0, p1, p2, v0, p3}, exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1155
    invoke-static {p0, p1, p2, v0, p3}, exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1157
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1d

    goto :goto_18
.end method

.method public static dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .registers 145
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2395
    const/16 v91, 0x0

    .line 2398
    .local v91, "out":Ljava/io/BufferedWriter;
    const/16 v107, 0x1

    .line 2399
    .local v107, "screenOn":Z
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v136

    const-string/jumbo v137, "power"

    invoke-virtual/range {v136 .. v137}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/os/PowerManager;

    .line 2400
    .local v98, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v98 .. v98}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v107

    .line 2402
    new-instance v93, Ljava/lang/StringBuilder;

    invoke-direct/range {v93 .. v93}, Ljava/lang/StringBuilder;-><init>()V

    .line 2403
    .local v93, "outString":Ljava/lang/StringBuilder;
    const/16 v84, 0x3

    .line 2405
    .local v84, "newlineReplacement":C
    const/16 v117, 0x0

    .line 2406
    .local v117, "tempString":Ljava/lang/String;
    const/16 v115, 0x0

    .line 2407
    .local v115, "tempResources":Landroid/content/res/Resources;
    const/16 v26, 0x0

    .line 2409
    .local v26, "currentView":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 2410
    .local v24, "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    .line 2411
    .local v23, "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v18, 0x0

    .line 2412
    .local v18, "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v22, 0x0

    .line 2413
    .local v22, "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v19, 0x0

    .line 2414
    .local v19, "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v20, 0x0

    .line 2415
    .local v20, "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v21, 0x0

    .line 2417
    .local v21, "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v16, 0x0

    .line 2418
    .local v16, "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    .line 2419
    .local v14, "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    .line 2420
    .local v15, "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    .line 2423
    .local v13, "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 2424
    .local v12, "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v17, 0x0

    .line 2426
    .local v17, "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v31, 0x0

    .line 2429
    .local v31, "field":Ljava/lang/reflect/Field;
    new-instance v111, Ljava/util/ArrayList;

    invoke-direct/range {v111 .. v111}, Ljava/util/ArrayList;-><init>()V

    .line 2430
    .local v111, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v128, Ljava/util/ArrayList;

    invoke-direct/range {v128 .. v128}, Ljava/util/ArrayList;-><init>()V

    .line 2432
    .local v128, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v50, Ljava/util/Hashtable;

    invoke-direct/range {v50 .. v50}, Ljava/util/Hashtable;-><init>()V

    .line 2433
    .local v50, "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v26

    .line 2435
    .local v26, "currentView":Landroid/view/View;
    move-object/from16 v0, v26

    nop

    nop

    move-object/from16 v136, v0

    invoke-virtual/range {v136 .. v136}, Landroid/view/View;->getVisibility()I

    move-result v136

    if-nez v136, :cond_8c

    .line 2437
    move-object/from16 v0, v111

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2438
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    const/16 v137, 0x0

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    .end local v26    # "currentView":Landroid/view/View;
    :cond_8c
    :goto_8c
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    if-lez v136, :cond_ee1

    .line 2443
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    add-int/lit8 v44, v136, -0x1

    .line 2444
    .local v44, "indexToRemove":I
    move-object/from16 v0, v111

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v26

    .line 2446
    .local v26, "currentView":Ljava/lang/Object;
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v49

    .line 2447
    .local v49, "level":I
    move-object/from16 v0, v128

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2449
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v136, v0

    if-eqz v136, :cond_12c

    .line 2451
    move-object/from16 v0, v26

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v126, v0

    .line 2452
    .local v126, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v126 .. v126}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v136

    add-int/lit8 v39, v136, -0x1

    .local v39, "i":I
    :goto_e6
    if-ltz v39, :cond_8c

    .line 2454
    move-object/from16 v0, v126

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v118

    .line 2455
    .local v118, "tempView":Landroid/view/View;
    invoke-virtual/range {v118 .. v118}, Landroid/view/View;->getVisibility()I

    move-result v136

    if-nez v136, :cond_129

    .line 2457
    move-object/from16 v0, v111

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2458
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    :cond_129
    add-int/lit8 v39, v39, -0x1

    goto :goto_e6

    .line 2462
    .end local v39    # "i":I
    .end local v118    # "tempView":Landroid/view/View;
    .end local v126    # "viewGroup":Landroid/view/ViewGroup;
    :cond_12c
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    move/from16 v136, v0
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_132} :catch_2c5
    .catchall {:try_start_4 .. :try_end_132} :catchall_2e9

    if-eqz v136, :cond_54c

    .line 2465
    :try_start_134
    move-object/from16 v0, v26

    check-cast v0, Landroid/view/View;

    move-object/from16 v136, v0

    invoke-virtual/range {v136 .. v136}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v115

    .line 2468
    const-class v136, Landroid/opengl/GLSurfaceView;

    const-string/jumbo v137, "mRenderer"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2469
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2470
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v113

    .line 2473
    .local v113, "tempObj":Ljava/lang/Object;
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "com.sec.samsung.gallery.glview.GlRootView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_2f0

    .line 2475
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mContentView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2476
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2477
    move-object/from16 v0, v31

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    .line 2478
    .local v60, "mContentView":Ljava/lang/Object;
    if-eqz v60, :cond_1d6

    .line 2480
    move-object/from16 v0, v111

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2481
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    if-nez v12, :cond_8c

    .line 2485
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2486
    .local v95, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1bf
    if-eqz v95, :cond_8c

    .line 2488
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GLView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_1d1

    .line 2490
    move-object/from16 v12, v95

    .line 2491
    goto/16 :goto_8c

    .line 2493
    :cond_1d1
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto :goto_1bf

    .line 2499
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d6
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mGLObjectZ"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2500
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2501
    move-object/from16 v0, v31

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v114

    .line 2502
    .local v114, "tempObject":Ljava/lang/Object;
    if-eqz v114, :cond_2df

    .line 2504
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "What: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v114 .. v114}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    move-object/from16 v0, v114

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v54, v0

    .line 2507
    .local v54, "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, "i$":Ljava/util/Iterator;
    :cond_21e
    :goto_21e
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_8c

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v90

    .line 2509
    .local v90, "object":Ljava/lang/Object;
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "Array: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    if-nez v14, :cond_25e

    .line 2513
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2514
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24e
    if-eqz v95, :cond_25e

    .line 2516
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GlObject"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_2d9

    .line 2518
    move-object/from16 v14, v95

    .line 2525
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_25e
    if-eqz v14, :cond_21e

    const-string v136, "getVisibility"

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v90

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Boolean;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v136

    if-eqz v136, :cond_21e

    .line 2526
    move-object/from16 v0, v111

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2527
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_2b3} :catch_2b5
    .catchall {:try_start_134 .. :try_end_2b3} :catchall_2e9

    goto/16 :goto_21e

    .line 2626
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v54    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v60    # "mContentView":Ljava/lang/Object;
    .end local v90    # "object":Ljava/lang/Object;
    .end local v113    # "tempObj":Ljava/lang/Object;
    .end local v114    # "tempObject":Ljava/lang/Object;
    :catch_2b5
    move-exception v27

    .line 2627
    .local v27, "e":Ljava/lang/Exception;
    :try_start_2b6
    const-string v136, "TDK"

    const-string v137, "Problem: "

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2c3} :catch_2c5
    .catchall {:try_start_2b6 .. :try_end_2c3} :catchall_2e9

    goto/16 :goto_8c

    .line 3650
    .end local v12    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "currentView":Ljava/lang/Object;
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v31    # "field":Ljava/lang/reflect/Field;
    .end local v44    # "indexToRemove":I
    .end local v49    # "level":I
    .end local v50    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v84    # "newlineReplacement":C
    .end local v93    # "outString":Ljava/lang/StringBuilder;
    .end local v98    # "pm":Landroid/os/PowerManager;
    .end local v111    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v115    # "tempResources":Landroid/content/res/Resources;
    .end local v117    # "tempString":Ljava/lang/String;
    .end local v128    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_2c5
    move-exception v27

    .line 3651
    .restart local v27    # "e":Ljava/lang/Exception;
    :goto_2c6
    :try_start_2c6
    const-string v136, "TDK"

    const-string v137, "Problem dumping the view:"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d3
    .catchall {:try_start_2c6 .. :try_end_2d3} :catchall_2e9

    .line 3653
    if-eqz v91, :cond_2d8

    .line 3654
    invoke-virtual/range {v91 .. v91}, Ljava/io/BufferedWriter;->close()V

    .line 3657
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_2d8
    :goto_2d8
    return-void

    .line 2521
    .restart local v12    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v24    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "currentView":Ljava/lang/Object;
    .restart local v31    # "field":Ljava/lang/reflect/Field;
    .restart local v40    # "i$":Ljava/util/Iterator;
    .restart local v44    # "indexToRemove":I
    .restart local v49    # "level":I
    .restart local v50    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v54    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v60    # "mContentView":Ljava/lang/Object;
    .restart local v84    # "newlineReplacement":C
    .restart local v90    # "object":Ljava/lang/Object;
    .restart local v93    # "outString":Ljava/lang/StringBuilder;
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v98    # "pm":Landroid/os/PowerManager;
    .restart local v111    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v113    # "tempObj":Ljava/lang/Object;
    .restart local v114    # "tempObject":Ljava/lang/Object;
    .restart local v115    # "tempResources":Landroid/content/res/Resources;
    .restart local v117    # "tempString":Ljava/lang/String;
    .restart local v128    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2d9
    :try_start_2d9
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto/16 :goto_24e

    .line 2533
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v54    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v90    # "object":Ljava/lang/Object;
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2df
    const-string v136, "TDK"

    const-string/jumbo v137, "mGLObjectZ is null"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e7
    .catch Ljava/lang/Exception; {:try_start_2d9 .. :try_end_2e7} :catch_2b5
    .catchall {:try_start_2d9 .. :try_end_2e7} :catchall_2e9

    goto/16 :goto_8c

    .line 3653
    .end local v12    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "currentView":Ljava/lang/Object;
    .end local v31    # "field":Ljava/lang/reflect/Field;
    .end local v44    # "indexToRemove":I
    .end local v49    # "level":I
    .end local v50    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v60    # "mContentView":Ljava/lang/Object;
    .end local v84    # "newlineReplacement":C
    .end local v93    # "outString":Ljava/lang/StringBuilder;
    .end local v98    # "pm":Landroid/os/PowerManager;
    .end local v111    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v113    # "tempObj":Ljava/lang/Object;
    .end local v114    # "tempObject":Ljava/lang/Object;
    .end local v115    # "tempResources":Landroid/content/res/Resources;
    .end local v117    # "tempString":Ljava/lang/String;
    .end local v128    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_2e9
    move-exception v136

    :goto_2ea
    if-eqz v91, :cond_2ef

    .line 3654
    invoke-virtual/range {v91 .. v91}, Ljava/io/BufferedWriter;->close()V

    :cond_2ef
    throw v136

    .line 2539
    .restart local v12    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v24    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "currentView":Ljava/lang/Object;
    .restart local v31    # "field":Ljava/lang/reflect/Field;
    .restart local v44    # "indexToRemove":I
    .restart local v49    # "level":I
    .restart local v50    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v84    # "newlineReplacement":C
    .restart local v93    # "outString":Ljava/lang/StringBuilder;
    .restart local v98    # "pm":Landroid/os/PowerManager;
    .restart local v111    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v113    # "tempObj":Ljava/lang/Object;
    .restart local v115    # "tempResources":Landroid/content/res/Resources;
    .restart local v117    # "tempString":Ljava/lang/String;
    .restart local v128    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2f0
    :try_start_2f0
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "com.sec.android.glview.TwGLContext"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_4ac

    .line 2542
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mRootView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2543
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2544
    move-object/from16 v0, v31

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v71

    .line 2546
    .local v71, "mRootView":Ljava/lang/Object;
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    .line 2547
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v23

    .line 2549
    move-object/from16 v0, v111

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2550
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    add-int/lit8 v116, v136, -0x1

    .line 2554
    .local v116, "tempStackCutLine":I
    :cond_363
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    move/from16 v0, v136

    move/from16 v1, v116

    if-le v0, v1, :cond_8c

    .line 2555
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    add-int/lit8 v44, v136, -0x1

    .line 2556
    move-object/from16 v0, v111

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v26

    .line 2558
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 2559
    .local v51, "levelOfGL":I
    move-object/from16 v0, v128

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2561
    if-eqz v24, :cond_363

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_363

    .line 2563
    const-string/jumbo v136, "mGLViews"

    move-object/from16 v0, v24

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2564
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2565
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/List;

    .line 2566
    .local v53, "listGLViews":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v136

    add-int/lit8 v39, v136, -0x1

    .restart local v39    # "i":I
    :goto_3dd
    if-ltz v39, :cond_363

    .line 2568
    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v118

    .line 2570
    .local v118, "tempView":Ljava/lang/Object;
    if-nez v18, :cond_3fd

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLButton"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_3fd

    .line 2571
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    .line 2573
    :cond_3fd
    if-nez v22, :cond_413

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLText"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_413

    .line 2574
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    .line 2576
    :cond_413
    if-nez v19, :cond_429

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLItem"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_429

    .line 2577
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 2579
    :cond_429
    if-nez v20, :cond_43f

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLItemDataCheckbox"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_43f

    .line 2580
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    .line 2582
    :cond_43f
    if-nez v21, :cond_455

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLModeSwitchButton"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_455

    .line 2583
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    .line 2586
    :cond_455
    const-string/jumbo v136, "mVisibility"

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2587
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2589
    move-object/from16 v0, v31

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v136

    and-int/lit8 v136, v136, 0xc

    if-nez v136, :cond_4a8

    .line 2591
    move-object/from16 v0, v111

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2592
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v51, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2566
    :cond_4a8
    add-int/lit8 v39, v39, -0x1

    goto/16 :goto_3dd

    .line 2598
    .end local v39    # "i":I
    .end local v51    # "levelOfGL":I
    .end local v53    # "listGLViews":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v71    # "mRootView":Ljava/lang/Object;
    .end local v116    # "tempStackCutLine":I
    .end local v118    # "tempView":Ljava/lang/Object;
    :cond_4ac
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "com.sec.android.gallery3d.ui.GLRootView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_52a

    .line 2600
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mContentView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2601
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2602
    move-object/from16 v0, v31

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    .line 2603
    .restart local v60    # "mContentView":Ljava/lang/Object;
    if-eqz v60, :cond_50d

    .line 2605
    move-object/from16 v0, v111

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    :cond_50d
    if-nez v12, :cond_8c

    .line 2611
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2612
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_513
    if-eqz v95, :cond_8c

    .line 2614
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GLView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_525

    .line 2616
    move-object/from16 v12, v95

    .line 2617
    goto/16 :goto_8c

    .line 2619
    :cond_525
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto :goto_513

    .line 2624
    .end local v60    # "mContentView":Ljava/lang/Object;
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_52a
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> Unknown class in GLSurfaceView: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54a
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_54a} :catch_2b5
    .catchall {:try_start_2f0 .. :try_end_54a} :catchall_2e9

    goto/16 :goto_8c

    .line 2630
    .end local v113    # "tempObj":Ljava/lang/Object;
    :cond_54c
    :try_start_54c
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/view/View;

    move/from16 v136, v0

    if-nez v136, :cond_8c

    .line 2635
    if-eqz v14, :cond_629

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_629

    .line 2636
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "instance of GlObject : "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    const-string v136, "getView"

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v26

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    .line 2638
    .local v64, "mGlView":Ljava/lang/Object;
    if-eqz v64, :cond_620

    .line 2639
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "got GlView: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    move-object/from16 v0, v111

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2643
    if-nez v16, :cond_5fd

    .line 2645
    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2646
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5ed
    if-eqz v95, :cond_5fd

    .line 2648
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GlView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_61b

    .line 2650
    move-object/from16 v16, v95

    .line 2656
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5fd
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "got classGlView: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 2653
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_61b
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto :goto_5ed

    .line 2659
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_620
    const-string v136, "TDK"

    const-string v137, "got GlView: mGlView is null"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 2664
    .end local v64    # "mGlView":Ljava/lang/Object;
    :cond_629
    if-eqz v16, :cond_75b

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_75b

    .line 2665
    if-nez v15, :cond_667

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GlTextView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_667

    .line 2666
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 2667
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "Got ClassGlTextView : "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_667
    if-nez v13, :cond_699

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GlImageView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_699

    .line 2670
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 2671
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "Got classGlImageView : "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_699
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "instance of GlView : "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const-string v136, "getChildCount"

    const/16 v137, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v26

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2676
    .local v11, "childCount":I
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "Child Count :  "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    add-int/lit8 v39, v11, -0x1

    .restart local v39    # "i":I
    :goto_6f1
    if-ltz v39, :cond_8c

    .line 2678
    const-string v136, "getChild"

    const/16 v137, 0x1

    move/from16 v0, v137

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v137, v0

    const/16 v138, 0x0

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x1

    move/from16 v0, v137

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v137, v0

    const/16 v138, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v139

    aput-object v139, v137, v138

    move-object/from16 v0, v136

    move-object/from16 v1, v26

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2679
    .local v10, "child":Ljava/lang/Object;
    move-object/from16 v0, v111

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    add-int/lit8 v39, v39, -0x1

    goto :goto_6f1

    .line 2683
    .end local v10    # "child":Ljava/lang/Object;
    .end local v11    # "childCount":I
    .end local v39    # "i":I
    :cond_75b
    if-eqz v12, :cond_eb7

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_eb7

    .line 2685
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "FilmStripView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_772
    .catch Ljava/lang/Exception; {:try_start_54c .. :try_end_772} :catch_2c5
    .catchall {:try_start_54c .. :try_end_772} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_7e6

    .line 2687
    :try_start_775
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mAlbumView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v56

    .line 2688
    .local v56, "mAlbumView":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2689
    move-object/from16 v0, v56

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2690
    .local v5, "albumView":Ljava/lang/Object;
    if-eqz v5, :cond_8c

    .line 2691
    move-object/from16 v0, v111

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c4
    .catch Ljava/lang/SecurityException; {:try_start_775 .. :try_end_7c4} :catch_7c6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_775 .. :try_end_7c4} :catch_7d6
    .catch Ljava/lang/Exception; {:try_start_775 .. :try_end_7c4} :catch_2c5
    .catchall {:try_start_775 .. :try_end_7c4} :catchall_2e9

    goto/16 :goto_8c

    .line 2694
    .end local v5    # "albumView":Ljava/lang/Object;
    .end local v56    # "mAlbumView":Ljava/lang/reflect/Field;
    :catch_7c6
    move-exception v27

    .line 2695
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_7c7
    const-string v136, "TDK"

    const-string v137, "No field: mAlbumView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8c

    .line 2696
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_7d6
    move-exception v27

    .line 2697
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No field: mAlbumView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8c

    .line 2700
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_7e6
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "AlbumView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-nez v136, :cond_806

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "AlbumSetView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_dcf

    .line 2705
    :cond_806
    if-nez v17, :cond_81c

    .line 2707
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2708
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_80c
    if-eqz v95, :cond_81c

    .line 2710
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "SlotView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_90b

    .line 2712
    move-object/from16 v17, v95

    .line 2719
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_81c
    if-eqz v17, :cond_8c

    .line 2723
    new-instance v121, Ljava/util/HashMap;

    invoke-direct/range {v121 .. v121}, Ljava/util/HashMap;-><init>()V

    .line 2725
    .local v121, "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v136, "mItems"

    move-object/from16 v0, v17

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v66

    .line 2726
    .local v66, "mItems":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v66

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2727
    move-object/from16 v0, v66

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/HashMap;

    .line 2729
    .local v47, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual/range {v47 .. v47}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v30

    .line 2730
    .local v30, "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 2731
    .local v45, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_849
    :goto_849
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_925

    .line 2732
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    .line 2733
    .local v46, "itemEnty":Ljava/lang/Object;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v112

    .line 2734
    .local v112, "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v6

    move/from16 v48, v0

    .local v48, "len$":I
    const/16 v40, 0x0

    .local v40, "i$":I
    :goto_860
    move/from16 v0, v40

    move/from16 v1, v48

    if-ge v0, v1, :cond_849

    aget-object v119, v6, v40

    .line 2735
    .local v119, "tfield":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v119

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2736
    move-object/from16 v0, v119

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v122

    .line 2738
    .local v122, "tobject":Ljava/lang/Object;
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "LabelDisplayItem"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_886
    .catch Ljava/lang/Exception; {:try_start_7c7 .. :try_end_886} :catch_2c5
    .catchall {:try_start_7c7 .. :try_end_886} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_921

    .line 2740
    :try_start_889
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mTitle"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v77

    .line 2741
    .local v77, "mTitle":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v77

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2742
    move-object/from16 v0, v77

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v120

    check-cast v120, Ljava/lang/String;

    .line 2744
    .local v120, "title":Ljava/lang/String;
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mSlotIndex"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v74

    .line 2745
    .local v74, "mSlotIndex":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2746
    move-object/from16 v0, v74

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v43

    .line 2748
    .local v43, "index":I
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mCount"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v61

    .line 2749
    .local v61, "mCount":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v61

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2750
    move-object/from16 v0, v61

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2753
    .local v25, "count":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v136

    new-instance v137, Landroid/util/Pair;

    move-object/from16 v0, v137

    move-object/from16 v1, v120

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v121

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f9
    .catch Ljava/lang/SecurityException; {:try_start_889 .. :try_end_8f9} :catch_8fb
    .catch Ljava/lang/NoSuchFieldException; {:try_start_889 .. :try_end_8f9} :catch_911
    .catch Ljava/lang/Exception; {:try_start_889 .. :try_end_8f9} :catch_2c5
    .catchall {:try_start_889 .. :try_end_8f9} :catchall_2e9

    goto/16 :goto_849

    .line 2754
    .end local v25    # "count":Ljava/lang/String;
    .end local v43    # "index":I
    .end local v61    # "mCount":Ljava/lang/reflect/Field;
    .end local v74    # "mSlotIndex":Ljava/lang/reflect/Field;
    .end local v77    # "mTitle":Ljava/lang/reflect/Field;
    .end local v120    # "title":Ljava/lang/String;
    :catch_8fb
    move-exception v27

    .line 2755
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_8fc
    const-string v136, "TDK"

    const-string v137, "No field: mTitle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_849

    .line 2715
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v27    # "e":Ljava/lang/SecurityException;
    .end local v30    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v40    # "i$":I
    .end local v45    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v46    # "itemEnty":Ljava/lang/Object;
    .end local v47    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v48    # "len$":I
    .end local v66    # "mItems":Ljava/lang/reflect/Field;
    .end local v112    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v119    # "tfield":Ljava/lang/reflect/Field;
    .end local v121    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v122    # "tobject":Ljava/lang/Object;
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_90b
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto/16 :goto_80c

    .line 2756
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v30    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v40    # "i$":I
    .restart local v45    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v46    # "itemEnty":Ljava/lang/Object;
    .restart local v47    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .restart local v48    # "len$":I
    .restart local v66    # "mItems":Ljava/lang/reflect/Field;
    .restart local v112    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v119    # "tfield":Ljava/lang/reflect/Field;
    .restart local v121    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v122    # "tobject":Ljava/lang/Object;
    :catch_911
    move-exception v27

    .line 2757
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No field: mTitle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91f
    .catch Ljava/lang/Exception; {:try_start_8fc .. :try_end_91f} :catch_2c5
    .catchall {:try_start_8fc .. :try_end_91f} :catchall_2e9

    goto/16 :goto_849

    .line 2734
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_921
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_860

    .line 2766
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v40    # "i$":I
    .end local v46    # "itemEnty":Ljava/lang/Object;
    .end local v48    # "len$":I
    .end local v112    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v119    # "tfield":Ljava/lang/reflect/Field;
    .end local v122    # "tobject":Ljava/lang/Object;
    :cond_925
    const/16 v108, 0x0

    .line 2767
    .local v108, "scrollX":I
    const/16 v109, 0x0

    .line 2770
    .local v109, "scrollY":I
    :try_start_929
    const-string/jumbo v136, "mScrollX"

    move-object/from16 v0, v136

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v72

    .line 2771
    .local v72, "mScrollX":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v72

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2772
    move-object/from16 v0, v72

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v108

    .line 2773
    const-string/jumbo v136, "mScrollY"

    move-object/from16 v0, v136

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v73

    .line 2774
    .local v73, "mScrollY":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v73

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2775
    move-object/from16 v0, v73

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_95c
    .catch Ljava/lang/SecurityException; {:try_start_929 .. :try_end_95c} :catch_d8f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_929 .. :try_end_95c} :catch_d9f
    .catch Ljava/lang/Exception; {:try_start_929 .. :try_end_95c} :catch_2c5
    .catchall {:try_start_929 .. :try_end_95c} :catchall_2e9

    move-result v109

    .line 2782
    .end local v72    # "mScrollX":Ljava/lang/reflect/Field;
    .end local v73    # "mScrollY":Ljava/lang/reflect/Field;
    :goto_95d
    :try_start_95d
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v138, "mScrollX/mScrollY: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ", "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move/from16 v1, v109

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_988
    .catch Ljava/lang/Exception; {:try_start_95d .. :try_end_988} :catch_2c5
    .catchall {:try_start_95d .. :try_end_988} :catchall_2e9

    .line 2786
    :try_start_988
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "getVisibleStart"

    const/16 v138, 0x0

    invoke-virtual/range {v136 .. v138}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v36

    .line 2787
    .local v36, "getVisibleStart":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "getVisibleEnd"

    const/16 v138, 0x0

    invoke-virtual/range {v136 .. v138}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v35

    .line 2788
    .local v35, "getVisibleEnd":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "getSlotRect"

    const/16 v138, 0x1

    move/from16 v0, v138

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v138, v0

    const/16 v139, 0x0

    sget-object v140, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v140, v138, v139

    invoke-virtual/range {v136 .. v138}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v33

    .line 2790
    .local v33, "getSlotRect":Ljava/lang/reflect/Method;
    const/16 v136, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v82

    .line 2791
    .local v82, "nStart":I
    const/16 v136, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v81

    .line 2793
    .local v81, "nEnd":I
    add-int/lit8 v39, v81, -0x1

    .restart local v39    # "i":I
    :goto_9de
    move/from16 v0, v39

    move/from16 v1, v82

    if-lt v0, v1, :cond_8c

    .line 2794
    const/16 v136, 0x1

    move/from16 v0, v136

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v136, v0

    const/16 v137, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Landroid/graphics/Rect;

    .line 2795
    .local v103, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v136, v0

    sub-int v136, v136, v108

    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v137, v0

    sub-int v137, v137, v109

    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v138, v0

    sub-int v138, v138, v108

    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v139, v0

    sub-int v139, v139, v109

    move-object/from16 v0, v103

    move/from16 v1, v136

    move/from16 v2, v137

    move/from16 v3, v138

    move/from16 v4, v139

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2797
    new-instance v83, Ljava/lang/StringBuilder;

    invoke-direct/range {v83 .. v83}, Ljava/lang/StringBuilder;-><init>()V

    .line 2798
    .local v83, "newSlot":Ljava/lang/StringBuilder;
    const-string v117, "Slot"

    .line 2799
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v136

    add-int v136, v136, v39

    add-int/lit8 v136, v136, 0x1

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 2802
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    const-string/jumbo v117, "true"

    .line 2805
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    const-string/jumbo v117, "true"

    .line 2808
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "pos_relative="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v134, v0

    .line 2811
    .local v134, "x":I
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v135, v0

    .line 2812
    .local v135, "y":I
    invoke-virtual/range {v103 .. v103}, Landroid/graphics/Rect;->width()I

    move-result v133

    .line 2813
    .local v133, "width":I
    invoke-virtual/range {v103 .. v103}, Landroid/graphics/Rect;->height()I

    move-result v38

    .line 2815
    .local v38, "height":I
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2817
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v136

    move-object/from16 v0, v121

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_ce9

    .line 2821
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v136

    move-object/from16 v0, v121

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/util/Pair;

    .line 2823
    .local v94, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v136, v0

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 2824
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v136, v0

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 2827
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    .end local v94    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ce9
    const-string/jumbo v117, "true"

    .line 2831
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "clickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    const-string/jumbo v117, "true"

    .line 2834
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "touchable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2836
    invoke-virtual/range {v83 .. v83}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2838
    move-object/from16 v0, v111

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2839
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v117 .. v117}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8b
    .catch Ljava/lang/SecurityException; {:try_start_988 .. :try_end_d8b} :catch_daf
    .catch Ljava/lang/NoSuchMethodException; {:try_start_988 .. :try_end_d8b} :catch_dbf
    .catch Ljava/lang/Exception; {:try_start_988 .. :try_end_d8b} :catch_2c5
    .catchall {:try_start_988 .. :try_end_d8b} :catchall_2e9

    .line 2793
    add-int/lit8 v39, v39, -0x1

    goto/16 :goto_9de

    .line 2776
    .end local v33    # "getSlotRect":Ljava/lang/reflect/Method;
    .end local v35    # "getVisibleEnd":Ljava/lang/reflect/Method;
    .end local v36    # "getVisibleStart":Ljava/lang/reflect/Method;
    .end local v38    # "height":I
    .end local v39    # "i":I
    .end local v81    # "nEnd":I
    .end local v82    # "nStart":I
    .end local v83    # "newSlot":Ljava/lang/StringBuilder;
    .end local v103    # "rect":Landroid/graphics/Rect;
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :catch_d8f
    move-exception v27

    .line 2777
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_d90
    const-string v136, "TDK"

    const-string v137, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_95d

    .line 2778
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_d9f
    move-exception v27

    .line 2779
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_95d

    .line 2841
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :catch_daf
    move-exception v27

    .line 2842
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No field: mAlbumView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8c

    .line 2843
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_dbf
    move-exception v27

    .line 2844
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    const-string v136, "TDK"

    const-string v137, "No field: mAlbumView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dcd
    .catch Ljava/lang/Exception; {:try_start_d90 .. :try_end_dcd} :catch_2c5
    .catchall {:try_start_d90 .. :try_end_dcd} :catchall_2e9

    goto/16 :goto_8c

    .line 2850
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    .end local v30    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v45    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v47    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v66    # "mItems":Ljava/lang/reflect/Field;
    .end local v108    # "scrollX":I
    .end local v109    # "scrollY":I
    .end local v121    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_dcf
    :try_start_dcf
    const-string/jumbo v136, "mComponents"

    move-object/from16 v0, v136

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v59

    .line 2851
    .local v59, "mComponents":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2852
    move-object/from16 v0, v59

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/ArrayList;
    :try_end_deb
    .catch Ljava/lang/SecurityException; {:try_start_dcf .. :try_end_deb} :catch_e31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_dcf .. :try_end_deb} :catch_ea7
    .catch Ljava/lang/Exception; {:try_start_dcf .. :try_end_deb} :catch_2c5
    .catchall {:try_start_dcf .. :try_end_deb} :catchall_2e9

    .line 2853
    .local v52, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-eqz v52, :cond_8c

    .line 2855
    :try_start_ded
    const-string v136, "getVisibility"

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v34

    .line 2856
    .local v34, "getVisibility":Ljava/lang/reflect/Method;
    const/16 v136, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2858
    new-instance v105, Ljava/util/ArrayList;

    invoke-direct/range {v105 .. v105}, Ljava/util/ArrayList;-><init>()V

    .line 2859
    .local v105, "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, "i$":Ljava/util/Iterator;
    :goto_e0b
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_e41

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    .line 2860
    .local v85, "obj":Ljava/lang/Object;
    const/16 v136, 0x0

    move-object/from16 v0, v105

    move/from16 v1, v136

    move-object/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_e20
    .catch Ljava/lang/SecurityException; {:try_start_ded .. :try_end_e20} :catch_e21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ded .. :try_end_e20} :catch_e97
    .catch Ljava/lang/NoSuchFieldException; {:try_start_ded .. :try_end_e20} :catch_ea7
    .catch Ljava/lang/Exception; {:try_start_ded .. :try_end_e20} :catch_2c5
    .catchall {:try_start_ded .. :try_end_e20} :catchall_2e9

    goto :goto_e0b

    .line 2870
    .end local v34    # "getVisibility":Ljava/lang/reflect/Method;
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v85    # "obj":Ljava/lang/Object;
    .end local v105    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_e21
    move-exception v27

    .line 2871
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_e22
    const-string v136, "TDK"

    const-string v137, "No method: getVisibility"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e2f
    .catch Ljava/lang/SecurityException; {:try_start_e22 .. :try_end_e2f} :catch_e31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e22 .. :try_end_e2f} :catch_ea7
    .catch Ljava/lang/Exception; {:try_start_e22 .. :try_end_e2f} :catch_2c5
    .catchall {:try_start_e22 .. :try_end_e2f} :catchall_2e9

    goto/16 :goto_8c

    .line 2876
    .end local v27    # "e":Ljava/lang/SecurityException;
    .end local v52    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v59    # "mComponents":Ljava/lang/reflect/Field;
    :catch_e31
    move-exception v27

    .line 2877
    .restart local v27    # "e":Ljava/lang/SecurityException;
    :try_start_e32
    const-string v136, "TDK"

    const-string v137, "No field: mComponents"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e3f
    .catch Ljava/lang/Exception; {:try_start_e32 .. :try_end_e3f} :catch_2c5
    .catchall {:try_start_e32 .. :try_end_e3f} :catchall_2e9

    goto/16 :goto_8c

    .line 2863
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v34    # "getVisibility":Ljava/lang/reflect/Method;
    .restart local v40    # "i$":Ljava/util/Iterator;
    .restart local v52    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v59    # "mComponents":Ljava/lang/reflect/Field;
    .restart local v105    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_e41
    :try_start_e41
    invoke-virtual/range {v105 .. v105}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_e45
    :goto_e45
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_8c

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    .line 2864
    .restart local v85    # "obj":Ljava/lang/Object;
    const/16 v136, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v85

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v132

    .line 2865
    .local v132, "visibility":I
    if-nez v132, :cond_e45

    .line 2866
    move-object/from16 v0, v111

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2867
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e96
    .catch Ljava/lang/SecurityException; {:try_start_e41 .. :try_end_e96} :catch_e21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e41 .. :try_end_e96} :catch_e97
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e41 .. :try_end_e96} :catch_ea7
    .catch Ljava/lang/Exception; {:try_start_e41 .. :try_end_e96} :catch_2c5
    .catchall {:try_start_e41 .. :try_end_e96} :catchall_2e9

    goto :goto_e45

    .line 2872
    .end local v34    # "getVisibility":Ljava/lang/reflect/Method;
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v85    # "obj":Ljava/lang/Object;
    .end local v105    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v132    # "visibility":I
    :catch_e97
    move-exception v27

    .line 2873
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    :try_start_e98
    const-string v136, "TDK"

    const-string v137, "No method: getVisibility"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ea5
    .catch Ljava/lang/SecurityException; {:try_start_e98 .. :try_end_ea5} :catch_e31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e98 .. :try_end_ea5} :catch_ea7
    .catch Ljava/lang/Exception; {:try_start_e98 .. :try_end_ea5} :catch_2c5
    .catchall {:try_start_e98 .. :try_end_ea5} :catchall_2e9

    goto/16 :goto_8c

    .line 2878
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    .end local v52    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v59    # "mComponents":Ljava/lang/reflect/Field;
    :catch_ea7
    move-exception v27

    .line 2879
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    :try_start_ea8
    const-string v136, "TDK"

    const-string v137, "No field: mComponents"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8c

    .line 2883
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_eb7
    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v136, v0

    if-nez v136, :cond_8c

    .line 2887
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "!!!!!!!!!! In while Unknown classes: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 2891
    .end local v26    # "currentView":Ljava/lang/Object;
    .end local v44    # "indexToRemove":I
    .end local v49    # "level":I
    :cond_ee1
    const-string v136, "TDK"

    const-string v137, ">> Start traversing the viewList!"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    invoke-virtual/range {v128 .. v128}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .restart local v40    # "i$":Ljava/util/Iterator;
    :goto_eec
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_2fb2

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v90

    .line 2901
    .restart local v90    # "object":Ljava/lang/Object;
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v49

    .line 2902
    .restart local v49    # "level":I
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_f23
    move/from16 v0, v39

    move/from16 v1, v49

    if-ge v0, v1, :cond_f35

    .line 2904
    const/16 v136, 0x20

    move-object/from16 v0, v93

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2902
    add-int/lit8 v39, v39, 0x1

    goto :goto_f23

    .line 2907
    :cond_f35
    if-nez v49, :cond_ff6

    .line 2909
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v125

    .line 2912
    .local v125, "viewContext":Landroid/content/Context;
    invoke-virtual/range {v125 .. v125}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v117

    .line 2913
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "package="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-virtual/range {v125 .. v125}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 2918
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "activity="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v136

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2921
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "screenon="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    .end local v125    # "viewContext":Landroid/content/Context;
    :cond_ff6
    move-object/from16 v0, v90

    instance-of v0, v0, Landroid/view/View;

    move/from16 v136, v0

    if-eqz v136, :cond_1ad9

    .line 2925
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (View) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 2928
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 2931
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    move-object/from16 v0, v90

    check-cast v0, Landroid/view/View;

    move-object/from16 v124, v0

    .line 2935
    .local v124, "view":Landroid/view/View;
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getId()I

    move-result v41

    .line 2936
    .local v41, "id":I
    if-ltz v41, :cond_112b

    .line 2938
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    :try_end_10a1
    .catch Ljava/lang/Exception; {:try_start_ea8 .. :try_end_10a1} :catch_2c5
    .catchall {:try_start_ea8 .. :try_end_10a1} :catchall_2e9

    move-result-object v115

    .line 2940
    :try_start_10a2
    move-object/from16 v0, v115

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v117

    .line 2941
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_10f9

    .line 2942
    :goto_10bc
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_10dd

    .line 2943
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v117

    goto :goto_10bc

    .line 2945
    :cond_10dd
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_10f9
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "id="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_112b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10a2 .. :try_end_112b} :catch_2ff8
    .catch Ljava/lang/Exception; {:try_start_10a2 .. :try_end_112b} :catch_2c5
    .catchall {:try_start_10a2 .. :try_end_112b} :catchall_2e9

    .line 2955
    :cond_112b
    :goto_112b
    const/16 v136, 0x2

    :try_start_112d
    move/from16 v0, v136

    new-array v0, v0, [I

    move-object/from16 v55, v0

    .line 2956
    .local v55, "location":[I
    move-object/from16 v0, v124

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2958
    const/16 v136, 0x0

    aget v136, v55, v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 2959
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    const/16 v136, 0x1

    aget v136, v55, v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 2961
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getWidth()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 2964
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getHeight()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 2966
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v136

    if-eqz v136, :cond_12b4

    .line 2970
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v136

    invoke-interface/range {v136 .. v136}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2971
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_1282

    .line 2972
    :goto_1245
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_1266

    .line 2973
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v117

    goto :goto_1245

    .line 2975
    :cond_1266
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> getContentDescription - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    :cond_1282
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "contentdesc="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    :cond_12b4
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isEnabled()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_148d

    .line 2981
    const-string/jumbo v117, "true"

    .line 2982
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isLongClickable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_1337

    .line 2986
    const-string/jumbo v117, "true"

    .line 2987
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "longclickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2990
    :cond_1337
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isClickable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_1378

    .line 2992
    const-string/jumbo v117, "true"

    .line 2993
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "clickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    :cond_1378
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isLongClickable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_1390

    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isClickable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_13c6

    .line 2998
    :cond_1390
    const-string/jumbo v117, "true"

    .line 2999
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "touchable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    :cond_13c6
    :goto_13c6
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isFocusable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_1407

    .line 3010
    const-string/jumbo v117, "true"

    .line 3011
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hasfocus="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    :cond_1407
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/AdapterView;

    move/from16 v136, v0

    if-eqz v136, :cond_1444

    .line 3017
    const-string/jumbo v117, "true"

    .line 3018
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "adapter="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    :cond_1444
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v136, v0

    if-eqz v136, :cond_1623

    .line 3024
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v118, v0

    .line 3026
    .local v118, "tempView":Landroid/widget/TextView;
    invoke-virtual/range {v118 .. v118}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v136

    invoke-interface/range {v136 .. v136}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3027
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_14df

    .line 3028
    :goto_146c
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_14c3

    .line 3029
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v117

    goto :goto_146c

    .line 3004
    .end local v118    # "tempView":Landroid/widget/TextView;
    :cond_148d
    const-string v117, "false"

    .line 3005
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13c6

    .line 3031
    .restart local v118    # "tempView":Landroid/widget/TextView;
    :cond_14c3
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    :cond_14df
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> textview - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    invoke-virtual/range {v118 .. v118}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v136

    invoke-virtual/range {v118 .. v118}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v137

    invoke-interface/range {v137 .. v137}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v110

    .line 3037
    .local v110, "size":F
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v110

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3038
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    invoke-virtual/range {v118 .. v118}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v136

    if-eqz v136, :cond_15c3

    .line 3042
    const-string/jumbo v117, "true"

    .line 3043
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "editable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3046
    :cond_15c3
    invoke-virtual/range {v118 .. v118}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    :try_end_15c6
    .catch Ljava/lang/Exception; {:try_start_112d .. :try_end_15c6} :catch_2c5
    .catchall {:try_start_112d .. :try_end_15c6} :catchall_2e9

    move-result-object v136

    if-eqz v136, :cond_1623

    .line 3049
    :try_start_15c9
    const-class v136, Landroid/widget/TextView;

    const-string/jumbo v137, "mResource"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3050
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3051
    move-object/from16 v0, v31

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_15e2
    .catch Ljava/lang/SecurityException; {:try_start_15c9 .. :try_end_15e2} :catch_184a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15c9 .. :try_end_15e2} :catch_18c0
    .catch Ljava/lang/Exception; {:try_start_15c9 .. :try_end_15e2} :catch_2c5
    .catchall {:try_start_15c9 .. :try_end_15e2} :catchall_2e9

    move-result v104

    .line 3052
    .local v104, "resource":I
    if-eqz v104, :cond_185a

    .line 3055
    :try_start_15e5
    invoke-virtual/range {v118 .. v118}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v117

    .line 3056
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "background="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1623
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15e5 .. :try_end_1623} :catch_183a
    .catch Ljava/lang/SecurityException; {:try_start_15e5 .. :try_end_1623} :catch_184a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15e5 .. :try_end_1623} :catch_18c0
    .catch Ljava/lang/Exception; {:try_start_15e5 .. :try_end_1623} :catch_2c5
    .catchall {:try_start_15e5 .. :try_end_1623} :catchall_2e9

    .line 3099
    .end local v104    # "resource":I
    .end local v110    # "size":F
    .end local v118    # "tempView":Landroid/widget/TextView;
    :cond_1623
    :goto_1623
    :try_start_1623
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v136, v0

    if-eqz v136, :cond_1671

    .line 3101
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/Checkable;

    move-object v9, v0

    .line 3102
    .local v9, "checkable":Landroid/widget/Checkable;
    invoke-interface {v9}, Landroid/widget/Checkable;->isChecked()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_194c

    .line 3103
    const-string/jumbo v117, "true"

    .line 3107
    :goto_163f
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "checked="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    .end local v9    # "checkable":Landroid/widget/Checkable;
    :cond_1671
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v136, v0

    if-eqz v136, :cond_176b

    .line 3112
    const-string/jumbo v117, "true"

    .line 3113
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "progressbar="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v100, v0

    .line 3116
    .local v100, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual/range {v100 .. v100}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v136

    if-nez v136, :cond_1990

    .line 3118
    invoke-virtual/range {v100 .. v100}, Landroid/widget/ProgressBar;->getMax()I
    :try_end_16be
    .catch Ljava/lang/Exception; {:try_start_1623 .. :try_end_16be} :catch_2c5
    .catchall {:try_start_1623 .. :try_end_16be} :catchall_2e9

    move-result v80

    .line 3119
    .local v80, "max":I
    if-eqz v80, :cond_176b

    .line 3125
    :try_start_16c1
    const-class v136, Landroid/widget/ProgressBar;

    const-string/jumbo v137, "mProgress"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3126
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3127
    move-object/from16 v0, v31

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v99

    .line 3128
    .local v99, "progress":I
    mul-int/lit8 v136, v99, 0x64

    div-int v136, v136, v80

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 3129
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "progress="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1716
    .catch Ljava/lang/SecurityException; {:try_start_16c1 .. :try_end_1716} :catch_1950
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16c1 .. :try_end_1716} :catch_1960
    .catch Ljava/lang/Exception; {:try_start_16c1 .. :try_end_1716} :catch_2c5
    .catchall {:try_start_16c1 .. :try_end_1716} :catchall_2e9

    .line 3137
    .end local v99    # "progress":I
    :goto_1716
    :try_start_1716
    const-class v136, Landroid/widget/ProgressBar;

    const-string/jumbo v137, "mSecondaryProgress"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3138
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3139
    move-object/from16 v0, v31

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v99

    .line 3140
    .restart local v99    # "progress":I
    mul-int/lit8 v136, v99, 0x64

    div-int v136, v136, v80

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 3141
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "progress2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_176b
    .catch Ljava/lang/SecurityException; {:try_start_1716 .. :try_end_176b} :catch_1970
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1716 .. :try_end_176b} :catch_1980
    .catch Ljava/lang/Exception; {:try_start_1716 .. :try_end_176b} :catch_2c5
    .catchall {:try_start_1716 .. :try_end_176b} :catchall_2e9

    .line 3156
    .end local v80    # "max":I
    .end local v99    # "progress":I
    .end local v100    # "progressBar":Landroid/widget/ProgressBar;
    :cond_176b
    :goto_176b
    :try_start_176b
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v136, v0

    if-eqz v136, :cond_17d3

    .line 3158
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v42, v0
    :try_end_1779
    .catch Ljava/lang/Exception; {:try_start_176b .. :try_end_1779} :catch_2c5
    .catchall {:try_start_176b .. :try_end_1779} :catchall_2e9

    .line 3160
    .local v42, "imageView":Landroid/widget/ImageView;
    :try_start_1779
    const-class v136, Landroid/widget/ImageView;

    const-string/jumbo v137, "mResource"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3161
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3162
    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1792
    .catch Ljava/lang/SecurityException; {:try_start_1779 .. :try_end_1792} :catch_19d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1779 .. :try_end_1792} :catch_1a4d
    .catch Ljava/lang/Exception; {:try_start_1779 .. :try_end_1792} :catch_2c5
    .catchall {:try_start_1779 .. :try_end_1792} :catchall_2e9

    move-result v104

    .line 3163
    .restart local v104    # "resource":I
    if-eqz v104, :cond_19e7

    .line 3166
    :try_start_1795
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v117

    .line 3167
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17d3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1795 .. :try_end_17d3} :catch_19c7
    .catch Ljava/lang/SecurityException; {:try_start_1795 .. :try_end_17d3} :catch_19d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1795 .. :try_end_17d3} :catch_1a4d
    .catch Ljava/lang/Exception; {:try_start_1795 .. :try_end_17d3} :catch_2c5
    .catchall {:try_start_1795 .. :try_end_17d3} :catchall_2e9

    .line 3209
    .end local v42    # "imageView":Landroid/widget/ImageView;
    .end local v104    # "resource":I
    :cond_17d3
    :goto_17d3
    :try_start_17d3
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v136, v0

    if-eqz v136, :cond_182f

    .line 3211
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/EditText;

    move-object/from16 v28, v0

    .line 3212
    .local v28, "editText":Landroid/widget/EditText;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v136

    if-eqz v136, :cond_1828

    .line 3213
    const-string v136, "TDK"

    const-string v137, "editText: editText1"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v136

    invoke-interface/range {v136 .. v136}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3215
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hint="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3217
    :cond_1828
    const-string v136, "TDK"

    const-string v137, "editText: editText2"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    .end local v28    # "editText":Landroid/widget/EditText;
    .end local v41    # "id":I
    .end local v55    # "location":[I
    .end local v90    # "object":Ljava/lang/Object;
    .end local v124    # "view":Landroid/view/View;
    :cond_182f
    :goto_182f
    const/16 v136, 0xa

    move-object/from16 v0, v93

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1838
    .catch Ljava/lang/Exception; {:try_start_17d3 .. :try_end_1838} :catch_2c5
    .catchall {:try_start_17d3 .. :try_end_1838} :catchall_2e9

    goto/16 :goto_eec

    .line 3057
    .restart local v41    # "id":I
    .restart local v55    # "location":[I
    .restart local v90    # "object":Ljava/lang/Object;
    .restart local v104    # "resource":I
    .restart local v110    # "size":F
    .restart local v118    # "tempView":Landroid/widget/TextView;
    .restart local v124    # "view":Landroid/view/View;
    :catch_183a
    move-exception v27

    .line 3058
    .local v27, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_183b
    const-string v136, "TDK"

    const-string v137, "Failed to get Resoruce Entry Name"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1848
    .catch Ljava/lang/SecurityException; {:try_start_183b .. :try_end_1848} :catch_184a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_183b .. :try_end_1848} :catch_18c0
    .catch Ljava/lang/Exception; {:try_start_183b .. :try_end_1848} :catch_2c5
    .catchall {:try_start_183b .. :try_end_1848} :catchall_2e9

    goto/16 :goto_1623

    .line 3091
    .end local v27    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v104    # "resource":I
    :catch_184a
    move-exception v27

    .line 3092
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_184b
    const-string v136, "TDK"

    const-string v137, "No mResource for entry of ImageView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1858
    .catch Ljava/lang/Exception; {:try_start_184b .. :try_end_1858} :catch_2c5
    .catchall {:try_start_184b .. :try_end_1858} :catchall_2e9

    goto/16 :goto_1623

    .line 3063
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v104    # "resource":I
    :cond_185a
    :try_start_185a
    const-class v136, Landroid/widget/ImageView;

    const-string/jumbo v137, "mUri"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3064
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3065
    move-object/from16 v0, v31

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v123

    check-cast v123, Landroid/net/Uri;

    .line 3066
    .local v123, "uri":Landroid/net/Uri;
    if-eqz v123, :cond_1623

    .line 3068
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v106

    .line 3069
    .local v106, "scheme":Ljava/lang/String;
    const-string v136, "android.resource"

    move-object/from16 v0, v136

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_18d0

    .line 3075
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3076
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "background="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18be
    .catch Ljava/lang/SecurityException; {:try_start_185a .. :try_end_18be} :catch_184a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_185a .. :try_end_18be} :catch_18c0
    .catch Ljava/lang/Exception; {:try_start_185a .. :try_end_18be} :catch_2c5
    .catchall {:try_start_185a .. :try_end_18be} :catchall_2e9

    goto/16 :goto_1623

    .line 3093
    .end local v104    # "resource":I
    .end local v106    # "scheme":Ljava/lang/String;
    .end local v123    # "uri":Landroid/net/Uri;
    :catch_18c0
    move-exception v27

    .line 3094
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    :try_start_18c1
    const-string v136, "TDK"

    const-string v137, "No mResource for entry of ImageView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18ce
    .catch Ljava/lang/Exception; {:try_start_18c1 .. :try_end_18ce} :catch_2c5
    .catchall {:try_start_18c1 .. :try_end_18ce} :catchall_2e9

    goto/16 :goto_1623

    .line 3077
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v104    # "resource":I
    .restart local v106    # "scheme":Ljava/lang/String;
    .restart local v123    # "uri":Landroid/net/Uri;
    :cond_18d0
    :try_start_18d0
    const-string v136, "content"

    move-object/from16 v0, v136

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_1914

    .line 3083
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3084
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "background="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1623

    .line 3086
    :cond_1914
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3087
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "background="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_194a
    .catch Ljava/lang/SecurityException; {:try_start_18d0 .. :try_end_194a} :catch_184a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18d0 .. :try_end_194a} :catch_18c0
    .catch Ljava/lang/Exception; {:try_start_18d0 .. :try_end_194a} :catch_2c5
    .catchall {:try_start_18d0 .. :try_end_194a} :catchall_2e9

    goto/16 :goto_1623

    .line 3105
    .end local v104    # "resource":I
    .end local v106    # "scheme":Ljava/lang/String;
    .end local v110    # "size":F
    .end local v118    # "tempView":Landroid/widget/TextView;
    .end local v123    # "uri":Landroid/net/Uri;
    .restart local v9    # "checkable":Landroid/widget/Checkable;
    :cond_194c
    :try_start_194c
    const-string v117, "false"

    goto/16 :goto_163f

    .line 3130
    .end local v9    # "checkable":Landroid/widget/Checkable;
    .restart local v80    # "max":I
    .restart local v100    # "progressBar":Landroid/widget/ProgressBar;
    :catch_1950
    move-exception v27

    .line 3131
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1716

    .line 3132
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_1960
    move-exception v27

    .line 3133
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1716

    .line 3142
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1970
    move-exception v27

    .line 3143
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_176b

    .line 3144
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_1980
    move-exception v27

    .line 3145
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_176b

    .line 3151
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .end local v80    # "max":I
    :cond_1990
    const-string/jumbo v117, "true"

    .line 3152
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "indeterminate="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19c5
    .catch Ljava/lang/Exception; {:try_start_194c .. :try_end_19c5} :catch_2c5
    .catchall {:try_start_194c .. :try_end_19c5} :catchall_2e9

    goto/16 :goto_176b

    .line 3168
    .end local v100    # "progressBar":Landroid/widget/ProgressBar;
    .restart local v42    # "imageView":Landroid/widget/ImageView;
    .restart local v104    # "resource":I
    :catch_19c7
    move-exception v27

    .line 3169
    .local v27, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_19c8
    const-string v136, "TDK"

    const-string v137, "Failed to get Resoruce Entry Name"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19d5
    .catch Ljava/lang/SecurityException; {:try_start_19c8 .. :try_end_19d5} :catch_19d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19c8 .. :try_end_19d5} :catch_1a4d
    .catch Ljava/lang/Exception; {:try_start_19c8 .. :try_end_19d5} :catch_2c5
    .catchall {:try_start_19c8 .. :try_end_19d5} :catchall_2e9

    goto/16 :goto_17d3

    .line 3202
    .end local v27    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v104    # "resource":I
    :catch_19d7
    move-exception v27

    .line 3203
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_19d8
    const-string v136, "TDK"

    const-string v137, "No mResource for entry of ImageView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19e5
    .catch Ljava/lang/Exception; {:try_start_19d8 .. :try_end_19e5} :catch_2c5
    .catchall {:try_start_19d8 .. :try_end_19e5} :catchall_2e9

    goto/16 :goto_17d3

    .line 3174
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v104    # "resource":I
    :cond_19e7
    :try_start_19e7
    const-class v136, Landroid/widget/ImageView;

    const-string/jumbo v137, "mUri"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3175
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3176
    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v123

    check-cast v123, Landroid/net/Uri;

    .line 3177
    .restart local v123    # "uri":Landroid/net/Uri;
    if-eqz v123, :cond_17d3

    .line 3179
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v106

    .line 3180
    .restart local v106    # "scheme":Ljava/lang/String;
    const-string v136, "android.resource"

    move-object/from16 v0, v136

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_1a5d

    .line 3186
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3187
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a4b
    .catch Ljava/lang/SecurityException; {:try_start_19e7 .. :try_end_1a4b} :catch_19d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19e7 .. :try_end_1a4b} :catch_1a4d
    .catch Ljava/lang/Exception; {:try_start_19e7 .. :try_end_1a4b} :catch_2c5
    .catchall {:try_start_19e7 .. :try_end_1a4b} :catchall_2e9

    goto/16 :goto_17d3

    .line 3204
    .end local v104    # "resource":I
    .end local v106    # "scheme":Ljava/lang/String;
    .end local v123    # "uri":Landroid/net/Uri;
    :catch_1a4d
    move-exception v27

    .line 3205
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    :try_start_1a4e
    const-string v136, "TDK"

    const-string v137, "No mResource for entry of ImageView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a5b
    .catch Ljava/lang/Exception; {:try_start_1a4e .. :try_end_1a5b} :catch_2c5
    .catchall {:try_start_1a4e .. :try_end_1a5b} :catchall_2e9

    goto/16 :goto_17d3

    .line 3188
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v104    # "resource":I
    .restart local v106    # "scheme":Ljava/lang/String;
    .restart local v123    # "uri":Landroid/net/Uri;
    :cond_1a5d
    :try_start_1a5d
    const-string v136, "content"

    move-object/from16 v0, v136

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_1aa1

    .line 3194
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3195
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17d3

    .line 3197
    :cond_1aa1
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3198
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1ad7
    .catch Ljava/lang/SecurityException; {:try_start_1a5d .. :try_end_1ad7} :catch_19d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a5d .. :try_end_1ad7} :catch_1a4d
    .catch Ljava/lang/Exception; {:try_start_1a5d .. :try_end_1ad7} :catch_2c5
    .catchall {:try_start_1a5d .. :try_end_1ad7} :catchall_2e9

    goto/16 :goto_17d3

    .line 3220
    .end local v41    # "id":I
    .end local v42    # "imageView":Landroid/widget/ImageView;
    .end local v55    # "location":[I
    .end local v104    # "resource":I
    .end local v106    # "scheme":Ljava/lang/String;
    .end local v123    # "uri":Landroid/net/Uri;
    .end local v124    # "view":Landroid/view/View;
    :cond_1ad9
    if-eqz v23, :cond_2378

    :try_start_1adb
    move-object/from16 v0, v23

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_2378

    .line 3221
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (TwGLView) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    move-object/from16 v32, v90

    .line 3225
    .local v32, "gLView":Ljava/lang/Object;
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 3226
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3228
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 3229
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b7b
    .catch Ljava/lang/Exception; {:try_start_1adb .. :try_end_1b7b} :catch_2c5
    .catchall {:try_start_1adb .. :try_end_1b7b} :catchall_2e9

    .line 3232
    const/16 v29, 0x0

    .line 3234
    .local v29, "enable":Z
    :try_start_1b7d
    const-string/jumbo v136, "mOnClickListener"

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3235
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3236
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    if-eqz v136, :cond_1c39

    .line 3237
    const/16 v29, 0x1

    .line 3238
    const-string/jumbo v117, "true"

    .line 3239
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "clickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3240
    const-string v117, "false"

    .line 3241
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "longclickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3242
    const-string/jumbo v117, "true"

    .line 3243
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "touchable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c39
    .catch Ljava/lang/SecurityException; {:try_start_1b7d .. :try_end_1c39} :catch_1cc9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b7d .. :try_end_1c39} :catch_1cd9
    .catch Ljava/lang/Exception; {:try_start_1b7d .. :try_end_1c39} :catch_2c5
    .catchall {:try_start_1b7d .. :try_end_1c39} :catchall_2e9

    .line 3250
    :cond_1c39
    :goto_1c39
    const/16 v136, 0x1

    move/from16 v0, v29

    move/from16 v1, v136

    if-ne v0, v1, :cond_1ce9

    :try_start_1c41
    const-string/jumbo v117, "true"

    .line 3251
    :goto_1c44
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c76
    .catch Ljava/lang/Exception; {:try_start_1c41 .. :try_end_1c76} :catch_2c5
    .catchall {:try_start_1c41 .. :try_end_1c76} :catchall_2e9

    .line 3255
    :try_start_1c76
    const-string/jumbo v136, "mTitle"

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3256
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3257
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 3258
    if-eqz v117, :cond_1d3b

    .line 3259
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_1d09

    .line 3260
    :goto_1ca8
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_1ced

    .line 3261
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_1cc7
    .catch Ljava/lang/SecurityException; {:try_start_1c76 .. :try_end_1cc7} :catch_1f19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1c76 .. :try_end_1cc7} :catch_1f29
    .catch Ljava/lang/Exception; {:try_start_1c76 .. :try_end_1cc7} :catch_2c5
    .catchall {:try_start_1c76 .. :try_end_1cc7} :catchall_2e9

    move-result-object v117

    goto :goto_1ca8

    .line 3245
    :catch_1cc9
    move-exception v27

    .line 3246
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_1cca
    const-string v136, "TDK"

    const-string v137, "No mOnClickListener for touch"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c39

    .line 3247
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_1cd9
    move-exception v27

    .line 3248
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mOnClickListener for touch"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c39

    .line 3250
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1ce9
    const-string v117, "false"
    :try_end_1ceb
    .catch Ljava/lang/Exception; {:try_start_1cca .. :try_end_1ceb} :catch_2c5
    .catchall {:try_start_1cca .. :try_end_1ceb} :catchall_2e9

    goto/16 :goto_1c44

    .line 3263
    :cond_1ced
    :try_start_1ced
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    :cond_1d09
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "id="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d3b
    .catch Ljava/lang/SecurityException; {:try_start_1ced .. :try_end_1d3b} :catch_1f19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1ced .. :try_end_1d3b} :catch_1f29
    .catch Ljava/lang/Exception; {:try_start_1ced .. :try_end_1d3b} :catch_2c5
    .catchall {:try_start_1ced .. :try_end_1d3b} :catchall_2e9

    .line 3275
    :cond_1d3b
    :goto_1d3b
    :try_start_1d3b
    const-string/jumbo v136, "mClipRect"

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3276
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3277
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/graphics/Rect;

    .line 3278
    .local v58, "mClipRect":Landroid/graphics/Rect;
    if-eqz v58, :cond_1f39

    .line 3279
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3280
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3282
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3283
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3285
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v137, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v138, v0

    sub-int v137, v137, v138

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3286
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3288
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v137, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v138, v0

    sub-int v137, v137, v138

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3289
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e96
    .catch Ljava/lang/SecurityException; {:try_start_1d3b .. :try_end_1e96} :catch_20aa
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1d3b .. :try_end_1e96} :catch_20ba
    .catch Ljava/lang/Exception; {:try_start_1d3b .. :try_end_1e96} :catch_2c5
    .catchall {:try_start_1d3b .. :try_end_1e96} :catchall_2e9

    .line 3312
    .end local v58    # "mClipRect":Landroid/graphics/Rect;
    :goto_1e96
    const/16 v31, 0x0

    .line 3313
    if-eqz v18, :cond_20ec

    :try_start_1e9a
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_1ea1
    .catch Ljava/lang/Exception; {:try_start_1e9a .. :try_end_1ea1} :catch_2c5
    .catchall {:try_start_1e9a .. :try_end_1ea1} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_20ec

    .line 3315
    :try_start_1ea4
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v18

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3316
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1eb8
    .catch Ljava/lang/SecurityException; {:try_start_1ea4 .. :try_end_1eb8} :catch_20ca
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1ea4 .. :try_end_1eb8} :catch_20dc
    .catch Ljava/lang/Exception; {:try_start_1ea4 .. :try_end_1eb8} :catch_2c5
    .catchall {:try_start_1ea4 .. :try_end_1eb8} :catchall_2e9

    .line 3335
    :cond_1eb8
    :goto_1eb8
    if-eqz v31, :cond_217f

    if-eqz v22, :cond_217f

    .line 3336
    :try_start_1ebc
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ebf
    .catch Ljava/lang/Exception; {:try_start_1ebc .. :try_end_1ebf} :catch_2c5
    .catchall {:try_start_1ebc .. :try_end_1ebf} :catchall_2e9

    move-result-object v76

    .line 3337
    .local v76, "mText":Ljava/lang/Object;
    if-eqz v76, :cond_217f

    .line 3339
    :try_start_1ec2
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v22

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3340
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3341
    move-object/from16 v0, v31

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 3342
    if-eqz v117, :cond_217f

    .line 3343
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_214c

    .line 3344
    :goto_1ef8
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_2130

    .line 3345
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_1f17
    .catch Ljava/lang/SecurityException; {:try_start_1ec2 .. :try_end_1f17} :catch_21de
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1ec2 .. :try_end_1f17} :catch_21ed
    .catch Ljava/lang/Exception; {:try_start_1ec2 .. :try_end_1f17} :catch_2c5
    .catchall {:try_start_1ec2 .. :try_end_1f17} :catchall_2e9

    move-result-object v117

    goto :goto_1ef8

    .line 3267
    .end local v76    # "mText":Ljava/lang/Object;
    :catch_1f19
    move-exception v27

    .line 3268
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_1f1a
    const-string v136, "TDK"

    const-string v137, "No mTile for ID"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d3b

    .line 3269
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_1f29
    move-exception v27

    .line 3270
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mTile for ID"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f37
    .catch Ljava/lang/Exception; {:try_start_1f1a .. :try_end_1f37} :catch_2c5
    .catchall {:try_start_1f1a .. :try_end_1f37} :catchall_2e9

    goto/16 :goto_1d3b

    .line 3291
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v58    # "mClipRect":Landroid/graphics/Rect;
    :cond_1f39
    :try_start_1f39
    const-string v136, "getCurrentArea"

    const/16 v137, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v32

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/graphics/RectF;

    .line 3293
    .local v62, "mCurrentArea":Landroid/graphics/RectF;
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v137, v0

    move/from16 v0, v137

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3294
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3296
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v137, v0

    move/from16 v0, v137

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3297
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3299
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v137, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v138, v0

    sub-float v137, v137, v138

    move/from16 v0, v137

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3300
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3302
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v137, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v138, v0

    sub-float v137, v137, v138

    move/from16 v0, v137

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3303
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20a8
    .catch Ljava/lang/SecurityException; {:try_start_1f39 .. :try_end_20a8} :catch_20aa
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1f39 .. :try_end_20a8} :catch_20ba
    .catch Ljava/lang/Exception; {:try_start_1f39 .. :try_end_20a8} :catch_2c5
    .catchall {:try_start_1f39 .. :try_end_20a8} :catchall_2e9

    goto/16 :goto_1e96

    .line 3305
    .end local v58    # "mClipRect":Landroid/graphics/Rect;
    .end local v62    # "mCurrentArea":Landroid/graphics/RectF;
    :catch_20aa
    move-exception v27

    .line 3306
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_20ab
    const-string v136, "TDK"

    const-string v137, "Failed to get a rectangle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e96

    .line 3307
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_20ba
    move-exception v27

    .line 3308
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "Failed to get a rectangle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e96

    .line 3317
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :catch_20ca
    move-exception v27

    .line 3318
    .local v27, "e":Ljava/lang/SecurityException;
    const/16 v31, 0x0

    .line 3319
    const-string v136, "TDK"

    const-string v137, "No mText to get TwGLText"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1eb8

    .line 3320
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_20dc
    move-exception v27

    .line 3321
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText to get TwGLText"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1eb8

    .line 3324
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_20ec
    if-eqz v19, :cond_1eb8

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_20f5
    .catch Ljava/lang/Exception; {:try_start_20ab .. :try_end_20f5} :catch_2c5
    .catchall {:try_start_20ab .. :try_end_20f5} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_1eb8

    .line 3326
    :try_start_20f8
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v19

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3327
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_210c
    .catch Ljava/lang/SecurityException; {:try_start_20f8 .. :try_end_210c} :catch_210e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20f8 .. :try_end_210c} :catch_2120
    .catch Ljava/lang/Exception; {:try_start_20f8 .. :try_end_210c} :catch_2c5
    .catchall {:try_start_20f8 .. :try_end_210c} :catchall_2e9

    goto/16 :goto_1eb8

    .line 3328
    :catch_210e
    move-exception v27

    .line 3329
    .local v27, "e":Ljava/lang/SecurityException;
    const/16 v31, 0x0

    .line 3330
    :try_start_2111
    const-string v136, "TDK"

    const-string v137, "No mText to get TwGLText"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1eb8

    .line 3331
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_2120
    move-exception v27

    .line 3332
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText to get TwGLText"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_212e
    .catch Ljava/lang/Exception; {:try_start_2111 .. :try_end_212e} :catch_2c5
    .catchall {:try_start_2111 .. :try_end_212e} :catchall_2e9

    goto/16 :goto_1eb8

    .line 3347
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v76    # "mText":Ljava/lang/Object;
    :cond_2130
    :try_start_2130
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    :cond_214c
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_217f
    .catch Ljava/lang/SecurityException; {:try_start_2130 .. :try_end_217f} :catch_21de
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2130 .. :try_end_217f} :catch_21ed
    .catch Ljava/lang/Exception; {:try_start_2130 .. :try_end_217f} :catch_2c5
    .catchall {:try_start_2130 .. :try_end_217f} :catchall_2e9

    .line 3360
    .end local v76    # "mText":Ljava/lang/Object;
    :cond_217f
    :goto_217f
    if-eqz v22, :cond_224b

    :try_start_2181
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_2188
    .catch Ljava/lang/Exception; {:try_start_2181 .. :try_end_2188} :catch_2c5
    .catchall {:try_start_2181 .. :try_end_2188} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_224b

    .line 3362
    :try_start_218b
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v22

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3363
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3364
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 3365
    if-eqz v117, :cond_224b

    .line 3366
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_2218

    .line 3367
    :goto_21bd
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_21fc

    .line 3368
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_21dc
    .catch Ljava/lang/SecurityException; {:try_start_218b .. :try_end_21dc} :catch_2324
    .catch Ljava/lang/NoSuchFieldException; {:try_start_218b .. :try_end_21dc} :catch_2334
    .catch Ljava/lang/Exception; {:try_start_218b .. :try_end_21dc} :catch_2c5
    .catchall {:try_start_218b .. :try_end_21dc} :catchall_2e9

    move-result-object v117

    goto :goto_21bd

    .line 3351
    .restart local v76    # "mText":Ljava/lang/Object;
    :catch_21de
    move-exception v27

    .line 3352
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_21df
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_217f

    .line 3353
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_21ed
    move-exception v27

    .line 3354
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21fb
    .catch Ljava/lang/Exception; {:try_start_21df .. :try_end_21fb} :catch_2c5
    .catchall {:try_start_21df .. :try_end_21fb} :catchall_2e9

    goto :goto_217f

    .line 3370
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .end local v76    # "mText":Ljava/lang/Object;
    :cond_21fc
    :try_start_21fc
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    :cond_2218
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_224b
    .catch Ljava/lang/SecurityException; {:try_start_21fc .. :try_end_224b} :catch_2324
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21fc .. :try_end_224b} :catch_2334
    .catch Ljava/lang/Exception; {:try_start_21fc .. :try_end_224b} :catch_2c5
    .catchall {:try_start_21fc .. :try_end_224b} :catchall_2e9

    .line 3382
    :cond_224b
    :goto_224b
    if-eqz v20, :cond_22b8

    :try_start_224d
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_2254
    .catch Ljava/lang/Exception; {:try_start_224d .. :try_end_2254} :catch_2c5
    .catchall {:try_start_224d .. :try_end_2254} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_22b8

    .line 3384
    :try_start_2257
    const-string/jumbo v136, "mChecked"

    move-object/from16 v0, v20

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3385
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3386
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v57

    .line 3387
    .local v57, "mChecked":Z
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v136

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3388
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "checked="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22b8
    .catch Ljava/lang/SecurityException; {:try_start_2257 .. :try_end_22b8} :catch_2344
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2257 .. :try_end_22b8} :catch_2354
    .catch Ljava/lang/Exception; {:try_start_2257 .. :try_end_22b8} :catch_2c5
    .catchall {:try_start_2257 .. :try_end_22b8} :catchall_2e9

    .line 3397
    .end local v57    # "mChecked":Z
    :cond_22b8
    :goto_22b8
    if-eqz v21, :cond_182f

    :try_start_22ba
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_22c1
    .catch Ljava/lang/Exception; {:try_start_22ba .. :try_end_22c1} :catch_2c5
    .catchall {:try_start_22ba .. :try_end_22c1} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_182f

    .line 3399
    :try_start_22c4
    const-string/jumbo v136, "mSwitchBallPosition"

    move-object/from16 v0, v21

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3400
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3401
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v75

    .line 3402
    .local v75, "mSwitchBallPosition":I
    if-nez v75, :cond_2364

    .line 3403
    const-string v117, "Camera"

    .line 3407
    :goto_22e0
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2312
    .catch Ljava/lang/SecurityException; {:try_start_22c4 .. :try_end_2312} :catch_2314
    .catch Ljava/lang/NoSuchFieldException; {:try_start_22c4 .. :try_end_2312} :catch_2368
    .catch Ljava/lang/Exception; {:try_start_22c4 .. :try_end_2312} :catch_2c5
    .catchall {:try_start_22c4 .. :try_end_2312} :catchall_2e9

    goto/16 :goto_182f

    .line 3408
    .end local v75    # "mSwitchBallPosition":I
    :catch_2314
    move-exception v27

    .line 3409
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_2315
    const-string v136, "TDK"

    const-string v137, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_182f

    .line 3374
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_2324
    move-exception v27

    .line 3375
    .restart local v27    # "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_224b

    .line 3376
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_2334
    move-exception v27

    .line 3377
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_224b

    .line 3389
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2344
    move-exception v27

    .line 3390
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No mChecked for check"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22b8

    .line 3391
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_2354
    move-exception v27

    .line 3392
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mChecked for check"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2362
    .catch Ljava/lang/Exception; {:try_start_2315 .. :try_end_2362} :catch_2c5
    .catchall {:try_start_2315 .. :try_end_2362} :catchall_2e9

    goto/16 :goto_22b8

    .line 3405
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v75    # "mSwitchBallPosition":I
    :cond_2364
    :try_start_2364
    const-string v117, "Camcorder"
    :try_end_2366
    .catch Ljava/lang/SecurityException; {:try_start_2364 .. :try_end_2366} :catch_2314
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2364 .. :try_end_2366} :catch_2368
    .catch Ljava/lang/Exception; {:try_start_2364 .. :try_end_2366} :catch_2c5
    .catchall {:try_start_2364 .. :try_end_2366} :catchall_2e9

    goto/16 :goto_22e0

    .line 3410
    .end local v75    # "mSwitchBallPosition":I
    :catch_2368
    move-exception v27

    .line 3411
    .restart local v27    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_2369
    const-string v136, "TDK"

    const-string v137, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_182f

    .line 3415
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .end local v29    # "enable":Z
    .end local v32    # "gLView":Ljava/lang/Object;
    :cond_2378
    if-eqz v16, :cond_2a0c

    move-object/from16 v0, v16

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_2a0c

    .line 3417
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (GlView-Sec) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 3420
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3422
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 3423
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3425
    if-eqz v13, :cond_247a

    move-object/from16 v0, v90

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_241f
    .catch Ljava/lang/Exception; {:try_start_2369 .. :try_end_241f} :catch_2c5
    .catchall {:try_start_2369 .. :try_end_241f} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_247a

    .line 3427
    :try_start_2422
    const-string/jumbo v136, "mResourceID"

    move-object/from16 v0, v136

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3428
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3429
    move-object/from16 v0, v31

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_243b
    .catch Ljava/lang/SecurityException; {:try_start_2422 .. :try_end_243b} :catch_297c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2422 .. :try_end_243b} :catch_298c
    .catch Ljava/lang/Exception; {:try_start_2422 .. :try_end_243b} :catch_2c5
    .catchall {:try_start_2422 .. :try_end_243b} :catchall_2e9

    move-result v70

    .line 3430
    .local v70, "mResourceID":I
    if-eqz v70, :cond_247a

    if-eqz v115, :cond_247a

    .line 3432
    :try_start_2440
    move-object/from16 v0, v115

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v117

    .line 3433
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_247a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2440 .. :try_end_247a} :catch_296c
    .catch Ljava/lang/SecurityException; {:try_start_2440 .. :try_end_247a} :catch_297c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2440 .. :try_end_247a} :catch_298c
    .catch Ljava/lang/Exception; {:try_start_2440 .. :try_end_247a} :catch_2c5
    .catchall {:try_start_2440 .. :try_end_247a} :catchall_2e9

    .line 3445
    .end local v70    # "mResourceID":I
    :cond_247a
    :goto_247a
    const/16 v63, 0x0

    .line 3448
    .local v63, "mGlObject":Ljava/lang/Object;
    :try_start_247c
    const-string/jumbo v136, "mRect"

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v69

    .line 3449
    .local v69, "mRect":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3450
    move-object/from16 v0, v69

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 3452
    .local v37, "glRect":Ljava/lang/Object;
    const-string/jumbo v136, "mGlObject"

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3453
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3454
    move-object/from16 v0, v31

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24b3
    .catch Ljava/lang/SecurityException; {:try_start_247c .. :try_end_24b3} :catch_29ac
    .catch Ljava/lang/NoSuchFieldException; {:try_start_247c .. :try_end_24b3} :catch_29cc
    .catch Ljava/lang/Exception; {:try_start_247c .. :try_end_24b3} :catch_2c5
    .catchall {:try_start_247c .. :try_end_24b3} :catchall_2e9

    move-result-object v63

    .line 3458
    :try_start_24b4
    const-string v136, "checkPosIn"

    const/16 v137, 0x2

    move/from16 v0, v137

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v137, v0

    const/16 v138, 0x0

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    const/16 v138, 0x1

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 3459
    .local v8, "checkPosIn":Ljava/lang/reflect/Method;
    const/16 v136, 0x1

    move/from16 v0, v136

    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3460
    const/16 v136, 0x2

    move/from16 v0, v136

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v136, v0

    const/16 v137, 0x0

    const/16 v138, 0x0

    invoke-static/range {v138 .. v138}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    const/16 v137, 0x1

    const/16 v138, 0x0

    invoke-static/range {v138 .. v138}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    move-object/from16 v0, v63

    move-object/from16 v1, v136

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24fc
    .catch Ljava/lang/SecurityException; {:try_start_24b4 .. :try_end_24fc} :catch_299c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24b4 .. :try_end_24fc} :catch_29bc
    .catch Ljava/lang/NoSuchFieldException; {:try_start_24b4 .. :try_end_24fc} :catch_29cc
    .catch Ljava/lang/Exception; {:try_start_24b4 .. :try_end_24fc} :catch_2c5
    .catchall {:try_start_24b4 .. :try_end_24fc} :catchall_2e9

    .line 3467
    .end local v8    # "checkPosIn":Ljava/lang/reflect/Method;
    :goto_24fc
    :try_start_24fc
    const-string/jumbo v136, "mXlt"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3468
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3469
    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v88

    .line 3470
    .local v88, "objX":F
    const-string/jumbo v136, "mYlt"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3471
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3472
    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v89

    .line 3474
    .local v89, "objY":F
    const-string/jumbo v136, "mXrb"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3475
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3476
    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    sub-float v87, v136, v88

    .line 3477
    .local v87, "objWidth":F
    const-string/jumbo v136, "mYrb"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3478
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3479
    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    sub-float v86, v136, v89

    .line 3482
    .local v86, "objHeight":F
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3484
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mLeft"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v67

    .line 3488
    .local v67, "mLeft":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v67

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3489
    move-object/from16 v0, v67

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v134

    .line 3490
    .restart local v134    # "x":I
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mTop"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v78

    .line 3491
    .local v78, "mTop":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v78

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3492
    move-object/from16 v0, v78

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v135

    .line 3494
    .restart local v135    # "y":I
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mWidth"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v79

    .line 3495
    .local v79, "mWidth":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v79

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3496
    move-object/from16 v0, v79

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v133

    .line 3497
    .restart local v133    # "width":I
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mHeight"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v65

    .line 3498
    .local v65, "mHeight":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v65

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3499
    move-object/from16 v0, v65

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v38

    .line 3504
    .restart local v38    # "height":I
    const-string/jumbo v136, "mParent"

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3505
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3506
    move-object/from16 v0, v31

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v68

    .line 3507
    .local v68, "mParent":Ljava/lang/Object;
    if-eqz v68, :cond_29dc

    .line 3508
    const-string v136, "getWidth"

    const/16 v137, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v68

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v97

    .line 3509
    .local v97, "parentWidth":I
    const-string v136, "getHeight"

    const/16 v137, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v68

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v96

    .line 3510
    .local v96, "parentHeight":I
    move/from16 v0, v97

    int-to-float v0, v0

    move/from16 v136, v0

    div-float v101, v87, v136

    .line 3511
    .local v101, "rateX":F
    move/from16 v0, v96

    int-to-float v0, v0

    move/from16 v136, v0

    div-float v102, v86, v136

    .line 3517
    .end local v96    # "parentHeight":I
    .end local v97    # "parentWidth":I
    .local v102, "rateY":F
    :goto_276b
    move/from16 v0, v134

    int-to-float v0, v0

    move/from16 v136, v0

    mul-float v136, v136, v101

    add-float v136, v136, v88

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v130, v0

    .line 3518
    .local v130, "viewX":I
    move/from16 v0, v135

    int-to-float v0, v0

    move/from16 v136, v0

    mul-float v136, v136, v102

    add-float v136, v136, v89

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v131, v0

    .line 3519
    .local v131, "viewY":I
    move/from16 v0, v133

    int-to-float v0, v0

    move/from16 v136, v0

    mul-float v136, v136, v101

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v129, v0

    .line 3520
    .local v129, "viewWidth":I
    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v136, v0

    mul-float v136, v136, v102

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v127, v0

    .line 3522
    .local v127, "viewHeight":I
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v131

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v131

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3524
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3525
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28c6
    .catch Ljava/lang/SecurityException; {:try_start_24fc .. :try_end_28c6} :catch_29ac
    .catch Ljava/lang/NoSuchFieldException; {:try_start_24fc .. :try_end_28c6} :catch_29cc
    .catch Ljava/lang/Exception; {:try_start_24fc .. :try_end_28c6} :catch_2c5
    .catchall {:try_start_24fc .. :try_end_28c6} :catchall_2e9

    .line 3533
    .end local v37    # "glRect":Ljava/lang/Object;
    .end local v38    # "height":I
    .end local v63    # "mGlObject":Ljava/lang/Object;
    .end local v65    # "mHeight":Ljava/lang/reflect/Field;
    .end local v67    # "mLeft":Ljava/lang/reflect/Field;
    .end local v68    # "mParent":Ljava/lang/Object;
    .end local v69    # "mRect":Ljava/lang/reflect/Field;
    .end local v78    # "mTop":Ljava/lang/reflect/Field;
    .end local v79    # "mWidth":Ljava/lang/reflect/Field;
    .end local v86    # "objHeight":F
    .end local v87    # "objWidth":F
    .end local v88    # "objX":F
    .end local v89    # "objY":F
    .end local v101    # "rateX":F
    .end local v102    # "rateY":F
    .end local v127    # "viewHeight":I
    .end local v129    # "viewWidth":I
    .end local v130    # "viewX":I
    .end local v131    # "viewY":I
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :goto_28c6
    if-eqz v15, :cond_291f

    :try_start_28c8
    move-object/from16 v0, v90

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_28cd
    .catch Ljava/lang/Exception; {:try_start_28c8 .. :try_end_28cd} :catch_2c5
    .catchall {:try_start_28c8 .. :try_end_28cd} :catchall_2e9

    move-result v136

    if-eqz v136, :cond_291f

    .line 3535
    :try_start_28d0
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v136

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3536
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3537
    move-object/from16 v0, v31

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Ljava/lang/String;

    .line 3538
    .local v76, "mText":Ljava/lang/String;
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_291f
    .catch Ljava/lang/SecurityException; {:try_start_28d0 .. :try_end_291f} :catch_29ec
    .catch Ljava/lang/NoSuchFieldException; {:try_start_28d0 .. :try_end_291f} :catch_29fc
    .catch Ljava/lang/Exception; {:try_start_28d0 .. :try_end_291f} :catch_2c5
    .catchall {:try_start_28d0 .. :try_end_291f} :catchall_2e9

    .line 3546
    .end local v76    # "mText":Ljava/lang/String;
    :cond_291f
    :goto_291f
    const/16 v29, 0x1

    .line 3547
    .restart local v29    # "enable":Z
    :try_start_2921
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v136

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3548
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_296a
    .catch Ljava/lang/Exception; {:try_start_2921 .. :try_end_296a} :catch_2c5
    .catchall {:try_start_2921 .. :try_end_296a} :catchall_2e9

    goto/16 :goto_182f

    .line 3434
    .end local v29    # "enable":Z
    .restart local v70    # "mResourceID":I
    :catch_296c
    move-exception v27

    .line 3435
    .local v27, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_296d
    const-string v136, "TDK"

    const-string v137, "Failed to get Resource entry name"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_297a
    .catch Ljava/lang/SecurityException; {:try_start_296d .. :try_end_297a} :catch_297c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_296d .. :try_end_297a} :catch_298c
    .catch Ljava/lang/Exception; {:try_start_296d .. :try_end_297a} :catch_2c5
    .catchall {:try_start_296d .. :try_end_297a} :catchall_2e9

    goto/16 :goto_247a

    .line 3438
    .end local v27    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v70    # "mResourceID":I
    :catch_297c
    move-exception v27

    .line 3439
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_297d
    const-string v136, "TDK"

    const-string v137, "No mResourceID for entry"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_247a

    .line 3440
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_298c
    move-exception v27

    .line 3441
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mResourceID for entry"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_299a
    .catch Ljava/lang/Exception; {:try_start_297d .. :try_end_299a} :catch_2c5
    .catchall {:try_start_297d .. :try_end_299a} :catchall_2e9

    goto/16 :goto_247a

    .line 3461
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v37    # "glRect":Ljava/lang/Object;
    .restart local v63    # "mGlObject":Ljava/lang/Object;
    .restart local v69    # "mRect":Ljava/lang/reflect/Field;
    :catch_299c
    move-exception v27

    .line 3462
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_299d
    const-string v136, "TDK"

    const-string v137, "No method: checkPosIn"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29aa
    .catch Ljava/lang/SecurityException; {:try_start_299d .. :try_end_29aa} :catch_29ac
    .catch Ljava/lang/NoSuchFieldException; {:try_start_299d .. :try_end_29aa} :catch_29cc
    .catch Ljava/lang/Exception; {:try_start_299d .. :try_end_29aa} :catch_2c5
    .catchall {:try_start_299d .. :try_end_29aa} :catchall_2e9

    goto/16 :goto_24fc

    .line 3527
    .end local v27    # "e":Ljava/lang/SecurityException;
    .end local v37    # "glRect":Ljava/lang/Object;
    .end local v63    # "mGlObject":Ljava/lang/Object;
    .end local v69    # "mRect":Ljava/lang/reflect/Field;
    :catch_29ac
    move-exception v27

    .line 3528
    .restart local v27    # "e":Ljava/lang/SecurityException;
    :try_start_29ad
    const-string v136, "TDK"

    const-string v137, "Failed to get a rectangle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29ba
    .catch Ljava/lang/Exception; {:try_start_29ad .. :try_end_29ba} :catch_2c5
    .catchall {:try_start_29ad .. :try_end_29ba} :catchall_2e9

    goto/16 :goto_28c6

    .line 3463
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v37    # "glRect":Ljava/lang/Object;
    .restart local v63    # "mGlObject":Ljava/lang/Object;
    .restart local v69    # "mRect":Ljava/lang/reflect/Field;
    :catch_29bc
    move-exception v27

    .line 3464
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    :try_start_29bd
    const-string v136, "TDK"

    const-string v137, "No method: checkPosIn"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29ca
    .catch Ljava/lang/SecurityException; {:try_start_29bd .. :try_end_29ca} :catch_29ac
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29bd .. :try_end_29ca} :catch_29cc
    .catch Ljava/lang/Exception; {:try_start_29bd .. :try_end_29ca} :catch_2c5
    .catchall {:try_start_29bd .. :try_end_29ca} :catchall_2e9

    goto/16 :goto_24fc

    .line 3529
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    .end local v37    # "glRect":Ljava/lang/Object;
    .end local v63    # "mGlObject":Ljava/lang/Object;
    .end local v69    # "mRect":Ljava/lang/reflect/Field;
    :catch_29cc
    move-exception v27

    .line 3530
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    :try_start_29cd
    const-string v136, "TDK"

    const-string v137, "Failed to get a rectangle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28c6

    .line 3513
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v37    # "glRect":Ljava/lang/Object;
    .restart local v38    # "height":I
    .restart local v63    # "mGlObject":Ljava/lang/Object;
    .restart local v65    # "mHeight":Ljava/lang/reflect/Field;
    .restart local v67    # "mLeft":Ljava/lang/reflect/Field;
    .restart local v68    # "mParent":Ljava/lang/Object;
    .restart local v69    # "mRect":Ljava/lang/reflect/Field;
    .restart local v78    # "mTop":Ljava/lang/reflect/Field;
    .restart local v79    # "mWidth":Ljava/lang/reflect/Field;
    .restart local v86    # "objHeight":F
    .restart local v87    # "objWidth":F
    .restart local v88    # "objX":F
    .restart local v89    # "objY":F
    .restart local v133    # "width":I
    .restart local v134    # "x":I
    .restart local v135    # "y":I
    :cond_29dc
    move/from16 v0, v133

    int-to-float v0, v0

    move/from16 v136, v0

    div-float v101, v87, v136

    .line 3514
    .restart local v101    # "rateX":F
    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v136, v0

    div-float v102, v86, v136

    .restart local v102    # "rateY":F
    goto/16 :goto_276b

    .line 3539
    .end local v37    # "glRect":Ljava/lang/Object;
    .end local v38    # "height":I
    .end local v63    # "mGlObject":Ljava/lang/Object;
    .end local v65    # "mHeight":Ljava/lang/reflect/Field;
    .end local v67    # "mLeft":Ljava/lang/reflect/Field;
    .end local v68    # "mParent":Ljava/lang/Object;
    .end local v69    # "mRect":Ljava/lang/reflect/Field;
    .end local v78    # "mTop":Ljava/lang/reflect/Field;
    .end local v79    # "mWidth":Ljava/lang/reflect/Field;
    .end local v86    # "objHeight":F
    .end local v87    # "objWidth":F
    .end local v88    # "objX":F
    .end local v89    # "objY":F
    .end local v101    # "rateX":F
    .end local v102    # "rateY":F
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :catch_29ec
    move-exception v27

    .line 3540
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_291f

    .line 3541
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_29fc
    move-exception v27

    .line 3542
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_291f

    .line 3550
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_2a0c
    if-eqz v14, :cond_2cf0

    move-object/from16 v0, v90

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_2cf0

    .line 3552
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (GlObject-Sec) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 3555
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3557
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 3558
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3560
    const-string/jumbo v117, "true"

    .line 3561
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2adf
    .catch Ljava/lang/Exception; {:try_start_29cd .. :try_end_2adf} :catch_2c5
    .catchall {:try_start_29cd .. :try_end_2adf} :catchall_2e9

    .line 3565
    :try_start_2adf
    const-string v136, "checkPosIn"

    const/16 v137, 0x2

    move/from16 v0, v137

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v137, v0

    const/16 v138, 0x0

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    const/16 v138, 0x1

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 3566
    .restart local v8    # "checkPosIn":Ljava/lang/reflect/Method;
    const/16 v136, 0x1

    move/from16 v0, v136

    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3567
    const/16 v136, 0x2

    move/from16 v0, v136

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v136, v0

    const/16 v137, 0x0

    const/16 v138, 0x0

    invoke-static/range {v138 .. v138}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    const/16 v137, 0x1

    const/16 v138, 0x0

    invoke-static/range {v138 .. v138}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    move-object/from16 v0, v90

    move-object/from16 v1, v136

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b27
    .catch Ljava/lang/SecurityException; {:try_start_2adf .. :try_end_2b27} :catch_2cd0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2adf .. :try_end_2b27} :catch_2ce0
    .catch Ljava/lang/Exception; {:try_start_2adf .. :try_end_2b27} :catch_2c5
    .catchall {:try_start_2adf .. :try_end_2b27} :catchall_2e9

    .line 3574
    .end local v8    # "checkPosIn":Ljava/lang/reflect/Method;
    :goto_2b27
    :try_start_2b27
    const-string/jumbo v136, "mXlt"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v67

    .line 3575
    .restart local v67    # "mLeft":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v67

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3576
    move-object/from16 v0, v67

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v134, v0

    .line 3577
    .restart local v134    # "x":I
    const-string/jumbo v136, "mYlt"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v78

    .line 3578
    .restart local v78    # "mTop":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v78

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3579
    move-object/from16 v0, v78

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v135, v0

    .line 3581
    .restart local v135    # "y":I
    const-string/jumbo v136, "mXrb"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v79

    .line 3582
    .restart local v79    # "mWidth":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v79

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3583
    move-object/from16 v0, v79

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v136, v0

    sub-int v133, v136, v134

    .line 3584
    .restart local v133    # "width":I
    const-string/jumbo v136, "mYrb"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v65

    .line 3585
    .restart local v65    # "mHeight":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v65

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3586
    move-object/from16 v0, v65

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v136, v0

    sub-int v38, v136, v135

    .line 3588
    .restart local v38    # "height":I
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_182f

    .line 3568
    .end local v38    # "height":I
    .end local v65    # "mHeight":Ljava/lang/reflect/Field;
    .end local v67    # "mLeft":Ljava/lang/reflect/Field;
    .end local v78    # "mTop":Ljava/lang/reflect/Field;
    .end local v79    # "mWidth":Ljava/lang/reflect/Field;
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :catch_2cd0
    move-exception v27

    .line 3569
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No method: checkPosIn"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b27

    .line 3570
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_2ce0
    move-exception v27

    .line 3571
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    const-string v136, "TDK"

    const-string v137, "No method: checkPosIn"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b27

    .line 3594
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2cf0
    if-eqz v12, :cond_2f7d

    move-object/from16 v0, v90

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_2f7d

    .line 3595
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (GLView-Sec) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 3598
    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->isEmpty()Z

    move-result v136

    if-eqz v136, :cond_2d2a

    .line 3599
    const-string v117, "$"

    .line 3601
    :cond_2d2a
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3603
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 3604
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3606
    const-string/jumbo v117, "true"

    .line 3607
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2dcb
    .catch Ljava/lang/Exception; {:try_start_2b27 .. :try_end_2dcb} :catch_2c5
    .catchall {:try_start_2b27 .. :try_end_2dcb} :catchall_2e9

    .line 3610
    :try_start_2dcb
    const-string v136, "bounds"

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3611
    .local v7, "bounds":Ljava/lang/reflect/Method;
    const/16 v136, 0x1

    move/from16 v0, v136

    invoke-virtual {v7, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3613
    const/16 v136, 0x0

    move-object/from16 v0, v90

    move-object/from16 v1, v136

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Landroid/graphics/Rect;

    .line 3614
    .restart local v103    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v134, v0

    .line 3615
    .restart local v134    # "x":I
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v135, v0

    .line 3616
    .restart local v135    # "y":I
    invoke-virtual/range {v103 .. v103}, Landroid/graphics/Rect;->width()I

    move-result v133

    .line 3617
    .restart local v133    # "width":I
    invoke-virtual/range {v103 .. v103}, Landroid/graphics/Rect;->height()I

    move-result v38

    .line 3620
    .restart local v38    # "height":I
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3621
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3622
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3623
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    const-string/jumbo v117, "true"

    .line 3626
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "pos_relative="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f5b
    .catch Ljava/lang/SecurityException; {:try_start_2dcb .. :try_end_2f5b} :catch_2f5d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2dcb .. :try_end_2f5b} :catch_2f6d
    .catch Ljava/lang/Exception; {:try_start_2dcb .. :try_end_2f5b} :catch_2c5
    .catchall {:try_start_2dcb .. :try_end_2f5b} :catchall_2e9

    goto/16 :goto_182f

    .line 3627
    .end local v7    # "bounds":Ljava/lang/reflect/Method;
    .end local v38    # "height":I
    .end local v103    # "rect":Landroid/graphics/Rect;
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :catch_2f5d
    move-exception v27

    .line 3628
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_2f5e
    const-string v136, "TDK"

    const-string v137, "Failed to get a boundary"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_182f

    .line 3631
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_2f6d
    move-exception v27

    .line 3632
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    const-string v136, "TDK"

    const-string v137, "Failed to get a boundary"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_182f

    .line 3635
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2f7d
    move-object/from16 v0, v90

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v136, v0

    if-eqz v136, :cond_2f90

    .line 3636
    check-cast v90, Ljava/lang/String;

    .end local v90    # "object":Ljava/lang/Object;
    move-object/from16 v0, v93

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_182f

    .line 3640
    .restart local v90    # "object":Ljava/lang/Object;
    :cond_2f90
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (Unknown) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_182f

    .line 3646
    .end local v39    # "i":I
    .end local v49    # "level":I
    .end local v90    # "object":Ljava/lang/Object;
    :cond_2fb2
    new-instance v92, Ljava/io/BufferedWriter;

    new-instance v136, Ljava/io/OutputStreamWriter;

    const-string/jumbo v137, "utf-8"

    move-object/from16 v0, v136

    move-object/from16 v1, p3

    move-object/from16 v2, v137

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v137, 0x8000

    move-object/from16 v0, v92

    move-object/from16 v1, v136

    move/from16 v2, v137

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2fce
    .catch Ljava/lang/Exception; {:try_start_2f5e .. :try_end_2fce} :catch_2c5
    .catchall {:try_start_2f5e .. :try_end_2fce} :catchall_2e9

    .line 3647
    .end local v91    # "out":Ljava/io/BufferedWriter;
    .local v92, "out":Ljava/io/BufferedWriter;
    :try_start_2fce
    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v92

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3648
    const-string v136, "DONE."

    move-object/from16 v0, v92

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3649
    invoke-virtual/range {v92 .. v92}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2fe5
    .catch Ljava/lang/Exception; {:try_start_2fce .. :try_end_2fe5} :catch_2ff3
    .catchall {:try_start_2fce .. :try_end_2fe5} :catchall_2fee

    .line 3653
    if-eqz v92, :cond_2ffb

    .line 3654
    invoke-virtual/range {v92 .. v92}, Ljava/io/BufferedWriter;->close()V

    move-object/from16 v91, v92

    .end local v92    # "out":Ljava/io/BufferedWriter;
    .restart local v91    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_2d8

    .line 3653
    .end local v91    # "out":Ljava/io/BufferedWriter;
    .restart local v92    # "out":Ljava/io/BufferedWriter;
    :catchall_2fee
    move-exception v136

    move-object/from16 v91, v92

    .end local v92    # "out":Ljava/io/BufferedWriter;
    .restart local v91    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_2ea

    .line 3650
    .end local v91    # "out":Ljava/io/BufferedWriter;
    .restart local v92    # "out":Ljava/io/BufferedWriter;
    :catch_2ff3
    move-exception v27

    move-object/from16 v91, v92

    .end local v92    # "out":Ljava/io/BufferedWriter;
    .restart local v91    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_2c6

    .line 2948
    .restart local v39    # "i":I
    .restart local v41    # "id":I
    .restart local v49    # "level":I
    .restart local v90    # "object":Ljava/lang/Object;
    .restart local v124    # "view":Landroid/view/View;
    :catch_2ff8
    move-exception v136

    goto/16 :goto_112b

    .end local v39    # "i":I
    .end local v41    # "id":I
    .end local v49    # "level":I
    .end local v90    # "object":Ljava/lang/Object;
    .end local v91    # "out":Ljava/io/BufferedWriter;
    .end local v124    # "view":Landroid/view/View;
    .restart local v92    # "out":Ljava/io/BufferedWriter;
    :cond_2ffb
    move-object/from16 v91, v92

    .end local v92    # "out":Ljava/io/BufferedWriter;
    .restart local v91    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_2d8
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1292
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 1294
    .local v12, "fields":[Ljava/lang/reflect/Field;
    array-length v9, v12

    .line 1295
    .local v9, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v9, :cond_1f9

    .line 1296
    aget-object v10, v12, v14

    .line 1300
    .local v10, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 1301
    .local v11, "fieldValue":Ljava/lang/Object;
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    .line 1302
    .local v22, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1303
    .local v4, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_81

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1306
    .local v8, "categoryPrefix":Ljava/lang/String;
    :goto_38
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_44

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_130

    .line 1307
    :cond_44
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_84

    if-eqz p0, :cond_84

    .line 1308
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 1309
    .local v15, "id":I
    move-object/from16 v0, p0

    invoke-static {v0, v15}, resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    .line 1373
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v15    # "id":I
    :cond_58
    :goto_58
    if-nez v11, :cond_60

    .line 1374
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1377
    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7, v11}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1295
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7e
    :goto_7e
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1303
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v11    # "fieldValue":Ljava/lang/Object;
    .restart local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_81
    const-string v8, ""

    goto :goto_38

    .line 1311
    .restart local v8    # "categoryPrefix":Ljava/lang/String;
    :cond_84
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v13

    .line 1312
    .local v13, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v13

    if-lez v2, :cond_b9

    .line 1313
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1314
    .local v16, "intValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1316
    .local v6, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1319
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v16    # "intValue":I
    :cond_b9
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v19

    .line 1320
    .local v19, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_e9

    .line 1321
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1322
    .restart local v16    # "intValue":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 1323
    .local v20, "mappingCount":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_cf
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_e3

    .line 1324
    aget-object v18, v19, v17

    .line 1325
    .local v18, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_107

    .line 1326
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

    .line 1331
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_e3
    if-nez v11, :cond_e9

    .line 1332
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1336
    .end local v16    # "intValue":I
    .end local v17    # "j":I
    .end local v20    # "mappingCount":I
    :cond_e9
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1337
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1338
    .restart local v11    # "fieldValue":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_10a

    .line 1339
    check-cast v11, Ljava/lang/Integer;

    .end local v11    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, formatIntToHexString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "fieldValue":Ljava/lang/String;
    goto/16 :goto_58

    .line 1323
    .local v11, "fieldValue":Ljava/lang/Object;
    .restart local v16    # "intValue":I
    .restart local v17    # "j":I
    .restart local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v20    # "mappingCount":I
    :cond_107
    add-int/lit8 v17, v17, 0x1

    goto :goto_cf

    .line 1340
    .end local v16    # "intValue":I
    .end local v17    # "j":I
    .end local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v20    # "mappingCount":I
    :cond_10a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_58

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v11, Ljava/lang/Byte;

    .end local v11    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const/4 v7, 0x1

    invoke-static {v3, v7}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "fieldValue":Ljava/lang/String;
    goto/16 :goto_58

    .line 1345
    .end local v13    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v19    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .local v11, "fieldValue":Ljava/lang/Object;
    :cond_130
    const-class v2, [I

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_173

    .line 1346
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v5, v0

    .line 1347
    .local v5, "array":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1348
    .restart local v6    # "valuePrefix":Ljava/lang/String;
    const-string v21, ""

    .line 1350
    .local v21, "suffix":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7e

    .line 1378
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v5    # "array":[I
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v21    # "suffix":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_170
    move-exception v2

    goto/16 :goto_7e

    .line 1353
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v8    # "categoryPrefix":Ljava/lang/String;
    .restart local v11    # "fieldValue":Ljava/lang/Object;
    .restart local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_173
    const-class v2, [Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_1c7

    .line 1354
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 1355
    .local v5, "array":[Ljava/lang/String;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v2

    if-eqz v2, :cond_7e

    if-eqz v5, :cond_7e

    .line 1356
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_18f
    array-length v2, v5

    move/from16 v0, v17

    if-ge v0, v2, :cond_7e

    .line 1357
    aget-object v2, v5, v17

    if-eqz v2, :cond_1bf

    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v7, v5, v17

    const-string v23, ""

    add-int/lit8 v2, v17, 0x1

    aget-object v2, v5, v2

    if-nez v2, :cond_1c2

    const-string/jumbo v2, "null"

    :goto_1b8
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v3, v7, v1, v2}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1356
    :cond_1bf
    add-int/lit8 v17, v17, 0x2

    goto :goto_18f

    .line 1358
    :cond_1c2
    add-int/lit8 v2, v17, 0x1

    aget-object v2, v5, v2

    goto :goto_1b8

    .line 1365
    .end local v5    # "array":[Ljava/lang/String;
    .end local v17    # "j":I
    :cond_1c7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_58

    .line 1366
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1367
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_1f7
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1f7} :catch_170

    goto/16 :goto_7e

    .line 1381
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f9
    return-void
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1209
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v22

    .line 1210
    .local v22, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v22

    array-length v10, v0

    .line 1211
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v12, v10, :cond_1ab

    .line 1212
    aget-object v20, v22, v12

    .line 1215
    .local v20, "method":Ljava/lang/reflect/Method;
    :try_start_c
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1216
    .local v21, "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    .line 1217
    .local v23, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .line 1218
    .local v5, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1221
    .local v9, "categoryPrefix":Ljava/lang/String;
    :goto_43
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_f0

    .line 1222
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_83

    if-eqz p0, :cond_83

    .line 1223
    check-cast v21, Ljava/lang/Integer;

    .end local v21    # "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1224
    .local v13, "id":I
    move-object/from16 v0, p0

    invoke-static {v0, v13}, resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v21

    .line 1281
    .end local v13    # "id":I
    :cond_5d
    :goto_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v3, v4, v8, v1}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1211
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7d
    :goto_7d
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1218
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v21    # "methodValue":Ljava/lang/Object;
    .restart local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_80
    const-string v9, ""

    goto :goto_43

    .line 1226
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    :cond_83
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v11

    .line 1227
    .local v11, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v11

    if-lez v3, :cond_b9

    .line 1228
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1229
    .local v14, "intValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1231
    .local v7, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v11, v14, v7}, exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1234
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v14    # "intValue":I
    :cond_b9
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v18

    .line 1235
    .local v18, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_5d

    .line 1236
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1237
    .restart local v14    # "intValue":I
    const/16 v16, 0x0

    .line 1238
    .local v16, "mapped":Z
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 1239
    .local v19, "mappingCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_d3
    move/from16 v0, v19

    if-ge v15, v0, :cond_e5

    .line 1240
    aget-object v17, v18, v15

    .line 1241
    .local v17, "mapper":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    if-ne v3, v14, :cond_ed

    .line 1242
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v21

    .line 1243
    .local v21, "methodValue":Ljava/lang/String;
    const/16 v16, 0x1

    .line 1248
    .end local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v21    # "methodValue":Ljava/lang/String;
    :cond_e5
    if-nez v16, :cond_5d

    .line 1249
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "methodValue":Ljava/lang/Integer;
    goto/16 :goto_5d

    .line 1239
    .restart local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .local v21, "methodValue":Ljava/lang/Object;
    :cond_ed
    add-int/lit8 v15, v15, 0x1

    goto :goto_d3

    .line 1253
    .end local v11    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v14    # "intValue":I
    .end local v15    # "j":I
    .end local v16    # "mapped":Z
    .end local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v18    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v19    # "mappingCount":I
    :cond_f0
    const-class v3, [I

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_12e

    .line 1254
    check-cast v21, [I

    .end local v21    # "methodValue":Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v6, v0

    .line 1255
    .local v6, "array":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1256
    .restart local v7    # "valuePrefix":Ljava/lang/String;
    const-string v24, "()"

    .line 1258
    .local v24, "suffix":Ljava/lang/String;
    const-string v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 1282
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "array":[I
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "suffix":Ljava/lang/String;
    :catch_12b
    move-exception v3

    goto/16 :goto_7d

    .line 1261
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    .restart local v21    # "methodValue":Ljava/lang/Object;
    .restart local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12e
    const-class v3, [Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_17a

    .line 1262
    check-cast v21, [Ljava/lang/String;

    .end local v21    # "methodValue":Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 1263
    .local v6, "array":[Ljava/lang/String;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    if-eqz v3, :cond_7d

    if-eqz v6, :cond_7d

    .line 1264
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_144
    array-length v3, v6

    if-ge v15, v3, :cond_7d

    .line 1265
    aget-object v3, v6, v15

    if-eqz v3, :cond_172

    .line 1266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v8, v6, v15

    const-string v25, "()"

    add-int/lit8 v3, v15, 0x1

    aget-object v3, v6, v3

    if-nez v3, :cond_175

    const-string/jumbo v3, "null"

    :goto_16b
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v4, v8, v1, v3}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1264
    :cond_172
    add-int/lit8 v15, v15, 0x2

    goto :goto_144

    .line 1266
    :cond_175
    add-int/lit8 v3, v15, 0x1

    aget-object v3, v6, v3

    goto :goto_16b

    .line 1274
    .end local v6    # "array":[Ljava/lang/String;
    .end local v15    # "j":I
    .restart local v21    # "methodValue":Ljava/lang/Object;
    :cond_17a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1275
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_1a6
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1a6} :catch_12b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1a6} :catch_1a8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_1a6} :catch_1ac

    goto/16 :goto_7d

    .line 1283
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v21    # "methodValue":Ljava/lang/Object;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1a8
    move-exception v3

    goto/16 :goto_7d

    .line 1287
    .end local v20    # "method":Ljava/lang/reflect/Method;
    :cond_1ab
    return-void

    .line 1284
    .restart local v20    # "method":Ljava/lang/reflect/Method;
    :catch_1ac
    move-exception v3

    goto/16 :goto_7d
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "property"    # Landroid/view/ViewDebug$ExportedProperty;
    .param p3, "array"    # [I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1415
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1416
    .local v5, "indexMapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_6a

    const/4 v3, 0x1

    .line 1418
    .local v3, "hasIndexMapping":Z
    :goto_a
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1419
    .local v10, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_6c

    const/4 v4, 0x1

    .line 1421
    .local v4, "hasMapping":Z
    :goto_14
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_6e

    if-eqz p0, :cond_6e

    const/4 v13, 0x1

    .line 1422
    .local v13, "resolveId":Z
    :goto_1d
    move-object/from16 v0, p3

    array-length v15, v0

    .line 1424
    .local v15, "valuesCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_21
    if-ge v7, v15, :cond_7b

    .line 1426
    const/4 v14, 0x0

    .line 1428
    .local v14, "value":Ljava/lang/String;
    aget v6, p3, v7

    .line 1430
    .local v6, "intValue":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1431
    .local v12, "name":Ljava/lang/String;
    if-eqz v3, :cond_3e

    .line 1432
    array-length v11, v5

    .line 1433
    .local v11, "mappingCount":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2e
    if-ge v8, v11, :cond_3e

    .line 1434
    aget-object v9, v5, v8

    .line 1435
    .local v9, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_70

    .line 1436
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1442
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_3e
    if-eqz v4, :cond_52

    .line 1443
    array-length v11, v10

    .line 1444
    .restart local v11    # "mappingCount":I
    const/4 v8, 0x0

    .restart local v8    # "k":I
    :goto_42
    if-ge v8, v11, :cond_52

    .line 1445
    aget-object v9, v10, v8

    .line 1446
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_73

    .line 1447
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    .line 1453
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_52
    if-eqz v13, :cond_76

    .line 1454
    if-nez v14, :cond_5e

    move-object/from16 v0, p0

    invoke-static {v0, v6}, resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "value":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1459
    .restart local v14    # "value":Ljava/lang/String;
    :cond_5e
    :goto_5e
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1424
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 1416
    .end local v3    # "hasIndexMapping":Z
    .end local v4    # "hasMapping":Z
    .end local v6    # "intValue":I
    .end local v7    # "j":I
    .end local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "resolveId":Z
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "valuesCount":I
    :cond_6a
    const/4 v3, 0x0

    goto :goto_a

    .line 1419
    .restart local v3    # "hasIndexMapping":Z
    .restart local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_6c
    const/4 v4, 0x0

    goto :goto_14

    .line 1421
    .restart local v4    # "hasMapping":Z
    :cond_6e
    const/4 v13, 0x0

    goto :goto_1d

    .line 1433
    .restart local v6    # "intValue":I
    .restart local v7    # "j":I
    .restart local v8    # "k":I
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v11    # "mappingCount":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "resolveId":Z
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "valuesCount":I
    :cond_70
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 1444
    :cond_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 1456
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_76
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_5e

    .line 1461
    .end local v6    # "intValue":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_7b
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .registers 13
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "mapping"    # [Landroid/view/ViewDebug$FlagToString;
    .param p2, "intValue"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1397
    array-length v0, p1

    .line 1398
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_31

    .line 1399
    aget-object v1, p1, v3

    .line 1400
    .local v1, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1401
    .local v2, "ifTrue":Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1402
    .local v4, "maskResult":I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_2f

    const/4 v6, 0x1

    .line 1403
    .local v6, "test":Z
    :goto_17
    if-eqz v6, :cond_1b

    if-nez v2, :cond_1f

    :cond_1b
    if-nez v6, :cond_2c

    if-nez v2, :cond_2c

    .line 1404
    :cond_1f
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1405
    .local v5, "name":Ljava/lang/String;
    invoke-static {v4}, formatIntToHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1406
    .local v7, "value":Ljava/lang/String;
    const-string v8, ""

    invoke-static {p0, p3, v5, v8, v7}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1398
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1402
    .end local v6    # "test":Z
    :cond_2f
    const/4 v6, 0x0

    goto :goto_17

    .line 1409
    .end local v1    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v2    # "ifTrue":Z
    .end local v4    # "maskResult":I
    :cond_31
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 500
    const/16 v6, 0x40

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2c

    .line 501
    const-string v6, "@"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "ids":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v3, v6

    .line 503
    .local v0, "className":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v3, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 505
    .local v1, "hashCode":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 506
    .local v4, "view":Landroid/view/View;
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2b

    .line 507
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4, v0, v1}, findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    .line 515
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "hashCode":I
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-object v5

    .line 511
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 512
    .local v2, "id":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2b
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .registers 8
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 933
    invoke-static {p0, p1, p2}, isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v1, p0

    .line 963
    :cond_7
    :goto_7
    return-object v1

    .line 937
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 938
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_45

    .line 939
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 940
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3d

    move-object v4, v3

    .line 941
    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, p1, p2}, findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 942
    .local v1, "found":Landroid/view/View;
    if-nez v1, :cond_7

    .line 948
    .end local v1    # "found":Landroid/view/View;
    :cond_20
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v4, :cond_2e

    .line 949
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v4, v4, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v4, p1, p2}, findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 951
    .restart local v1    # "found":Landroid/view/View;
    if-nez v1, :cond_7

    .line 955
    .end local v1    # "found":Landroid/view/View;
    :cond_2e
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v4, :cond_3a

    .line 956
    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .end local v3    # "view":Landroid/view/View;
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 958
    .restart local v1    # "found":Landroid/view/View;
    if-nez v1, :cond_7

    .line 938
    .end local v1    # "found":Landroid/view/View;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 945
    .restart local v3    # "view":Landroid/view/View;
    :cond_3d
    invoke-static {v3, p1, p2}, isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v1, v3

    .line 946
    goto :goto_7

    .line 963
    .end local v3    # "view":Landroid/view/View;
    :cond_45
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # I

    .prologue
    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, sFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_b

    .line 1070
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, sFieldsForClasses:Ljava/util/HashMap;

    .line 1072
    :cond_b
    sget-object v7, sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_18

    .line 1073
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, sAnnotations:Ljava/util/HashMap;

    .line 1076
    :cond_18
    sget-object v6, sFieldsForClasses:Ljava/util/HashMap;

    .line 1078
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1079
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_24

    move-object v3, v2

    .line 1099
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .local v3, "fields":[Ljava/lang/reflect/Field;
    :goto_23
    return-object v3

    .line 1083
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    .local v4, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1086
    array-length v0, v2

    .line 1087
    .local v0, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    if-ge v5, v0, :cond_50

    .line 1088
    aget-object v1, v2, v5

    .line 1089
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 1090
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1091
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    sget-object v7, sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 1096
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_50
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1097
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1099
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_23
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1103
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, sMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_d

    .line 1104
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, sMethodsForClasses:Ljava/util/HashMap;

    .line 1106
    :cond_d
    sget-object v7, sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1a

    .line 1107
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, sAnnotations:Ljava/util/HashMap;

    .line 1110
    :cond_1a
    sget-object v3, sMethodsForClasses:Ljava/util/HashMap;

    .line 1112
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1113
    .local v5, "methods":[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_26

    move-object v6, v5

    .line 1135
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .local v6, "methods":[Ljava/lang/reflect/Method;
    :goto_25
    return-object v6

    .line 1117
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1120
    array-length v0, v5

    .line 1121
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v0, :cond_61

    .line 1122
    aget-object v4, v5, v2

    .line 1123
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_5e

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_5e

    .line 1126
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1127
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    sget-object v7, sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1132
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1133
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1135
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_25
.end method

.method private static getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .registers 14
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v11, 0x1

    .line 909
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 910
    .local v8, "outValue":Landroid/util/TypedValue;
    const-string/jumbo v7, "null"

    .line 911
    .local v7, "nullString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 912
    .local v4, "i":I
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v2

    .line 913
    .local v2, "attributes":[I
    array-length v9, v2

    mul-int/lit8 v9, v9, 0x2

    new-array v3, v9, [Ljava/lang/String;

    .line 914
    .local v3, "data":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_16
    if-ge v5, v6, :cond_48

    aget v1, v0, v5

    .line 916
    .local v1, "attributeId":I
    :try_start_1a
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 917
    add-int/lit8 v10, v4, 0x1

    const/4 v9, 0x1

    invoke-virtual {p1, v1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v9

    if-eqz v9, :cond_46

    invoke-virtual {v8}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_31
    aput-object v9, v3, v10

    .line 919
    add-int/lit8 v4, v4, 0x2

    .line 922
    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_43

    .line 923
    add-int/lit8 v9, v4, -0x1

    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_43} :catch_49

    .line 914
    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_46
    move-object v9, v7

    .line 917
    goto :goto_31

    .line 929
    .end local v1    # "attributeId":I
    :cond_48
    return-object v3

    .line 925
    .restart local v1    # "attributeId":I
    :catch_49
    move-exception v9

    goto :goto_43
.end method

.method public static getViewInstanceCount()J
    .registers 2

    .prologue
    .line 403
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .registers 2

    .prologue
    .line 414
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-static {p0, p1}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 521
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 523
    :cond_9
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1657
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1658
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1659
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1661
    .local v5, "exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Landroid/view/ViewDebug$8;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/ViewDebug$8;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1677
    :try_start_1b
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_30

    .line 1682
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1683
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1678
    :catch_30
    move-exception v7

    .line 1679
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1686
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_37
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 967
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_22

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "viewClassName":Ljava/lang/String;
    const-string v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 970
    const-string v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 975
    .end local v0    # "viewClassName":Ljava/lang/String;
    :goto_1c
    return v1

    .line 972
    .restart local v0    # "viewClassName":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1c

    .line 975
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_22
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 778
    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-static {p0, p1}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 772
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 773
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z

    .prologue
    const/4 v3, 0x1

    .line 814
    if-eqz p0, :cond_3d

    .line 815
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 816
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 818
    .local v0, "cache":[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v0, p0, p1, v2}, Landroid/view/ViewDebug$6;-><init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 832
    const-wide/16 v4, 0xfa0

    :try_start_14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 833
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 840
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_1c
    return-object v3

    .line 834
    .restart local v0    # "cache":[Landroid/graphics/Bitmap;
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_1d
    move-exception v1

    .line 835
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 840
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_3d
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 9
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-static {p0, p2}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 540
    .local v3, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 542
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_48
    .catchall {:try_start_5 .. :try_end_12} :catchall_3e

    .line 544
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    if-eqz v3, :cond_26

    .line 545
    :try_start_14
    invoke-static {v3, v2}, profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 550
    :goto_17
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_2f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_45

    .line 555
    if-eqz v2, :cond_4a

    .line 556
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    move-object v1, v2

    .line 559
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_25
    :goto_25
    return-void

    .line 547
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_26
    :try_start_26
    const-string v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2f
    .catchall {:try_start_26 .. :try_end_2e} :catchall_45

    goto :goto_17

    .line 552
    :catch_2f
    move-exception v0

    move-object v1, v2

    .line 553
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :goto_31
    :try_start_31
    const-string v4, "View"

    const-string v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3e

    .line 555
    if-eqz v1, :cond_25

    .line 556
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_25

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3e
    move-exception v4

    :goto_3f
    if-eqz v1, :cond_44

    .line 556
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_44
    throw v4

    .line 555
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_45
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_3f

    .line 552
    :catch_48
    move-exception v0

    goto :goto_31

    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_4a
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_25
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 565
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .registers 14
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const-wide/16 v2, 0x0

    .line 570
    if-nez p2, :cond_c

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_74

    :cond_c
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v6

    .line 597
    .local v6, "durationMeasure":J
    :goto_15
    if-nez p2, :cond_1d

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_76

    :cond_1d
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v4

    .line 611
    .local v4, "durationLayout":J
    :goto_26
    if-nez p2, :cond_34

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_34

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_3d

    :cond_34
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2

    .line 642
    .local v2, "durationDraw":J
    :cond_3d
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 644
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 646
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 648
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_78

    move-object v1, p0

    .line 649
    check-cast v1, Landroid/view/ViewGroup;

    .line 650
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 651
    .local v0, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_67
    if-ge v8, v0, :cond_78

    .line 652
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, p1, v10}, profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 651
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "durationDraw":J
    .end local v4    # "durationLayout":J
    .end local v6    # "durationMeasure":J
    .end local v8    # "i":I
    :cond_74
    move-wide v6, v2

    .line 570
    goto :goto_15

    .restart local v6    # "durationMeasure":J
    :cond_76
    move-wide v4, v2

    .line 597
    goto :goto_26

    .line 655
    .restart local v2    # "durationDraw":J
    .restart local v4    # "durationLayout":J
    :cond_78
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .local p1, "operation":Landroid/view/ViewDebug$ViewOperation;, "Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 664
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 665
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [J

    .line 667
    .local v0, "duration":[J
    new-instance v3, Landroid/view/ViewDebug$5;

    invoke-direct {v3, p1, v0, v2}, Landroid/view/ViewDebug$5;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 684
    const-wide/16 v6, 0xfa0

    :try_start_14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 685
    const-string v3, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_34} :catch_35

    .line 694
    :goto_34
    return-wide v4

    .line 688
    :catch_35
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_34

    .line 694
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_56
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    goto :goto_34
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-static {p0, p1}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 527
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 528
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_e
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1465
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1466
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_3f

    .line 1468
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v1

    .line 1476
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_25
    return-object v1

    .line 1470
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 1471
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, formatIntToHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1472
    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_25

    .line 1474
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_3f
    const-string v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_25
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1694
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1695
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1696
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_3f

    .line 1697
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1701
    :cond_3f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1703
    new-instance v2, Landroid/view/ViewDebug$9;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$9;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1709
    return-void
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 431
    return-void
.end method

.method public static stopHierarchyTracing()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    return-void
.end method

.method public static stopRecyclerTracing()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 439
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$HierarchyTraceType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 447
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$RecyclerTraceType;
    .param p2, "parameters"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1386
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1389
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1390
    invoke-static {p0, p4}, writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1391
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1392
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .registers 6
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1480
    if-eqz p1, :cond_39

    .line 1481
    const-string v0, "[EXCEPTION]"

    .line 1483
    .local v0, "output":Ljava/lang/String;
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_24

    move-result-object v0

    .line 1485
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1486
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1492
    .end local v0    # "output":Ljava/lang/String;
    :goto_23
    return-void

    .line 1485
    .restart local v0    # "output":Ljava/lang/String;
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1486
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    throw v1

    .line 1490
    .end local v0    # "output":Ljava/lang/String;
    :cond_39
    const-string v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_23
.end method
