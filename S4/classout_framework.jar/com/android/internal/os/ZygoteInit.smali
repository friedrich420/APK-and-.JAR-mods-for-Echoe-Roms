.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field static final GC_LOOP_COUNT:I = 0xa

.field private static final INITIAL_NUMBER_THREAD1:I = 0x2c6

.field private static final INITIAL_NUMBER_THREAD2:I = 0x2bc

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PARALLEL_LOAD:Z = true

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_NC_THREAD1:Ljava/lang/String; = "persist.sys.clssprld1"

.field private static final PROPERTY_NC_THREAD2:Ljava/lang/String; = "persist.sys.clssprld2"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static final USE_DYNAMIC_BALANCE:Z = false

.field private static final heapgrowthlimit:Ljava/lang/String; = "64m"

.field static isError:Z

.field static isParallelThreadRunning:Z

.field static isPreloadComplete:Z

.field private static mResources:Landroid/content/res/Resources;

.field private static numberOfPreloadClasses:I

.field private static numberOfPreloadClassesforThread1:I

.field private static numberOfPreloadClassesforThread2:I

.field public static parallelPCThread1running:Z

.field public static parallelPCThread2running:Z

.field public static postLoadClasses:[Ljava/lang/String;

.field private static sServerSocket:Landroid/net/LocalServerSocket;

.field private static thread1time:I

.field private static thread2time:I

.field private static threadMtime:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 93
    const-string v0, "64m"

    const-string v1, "64m"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    sput v0, PRELOAD_GC_THRESHOLD:I

    .line 275
    sput-boolean v3, isParallelThreadRunning:Z

    .line 276
    sput-boolean v3, isPreloadComplete:Z

    .line 277
    sput-boolean v3, isError:Z

    .line 515
    sput-boolean v3, parallelPCThread1running:Z

    .line 516
    sput-boolean v3, parallelPCThread2running:Z

    .line 519
    sput v3, numberOfPreloadClasses:I

    .line 520
    const/16 v0, 0x2c6

    sput v0, numberOfPreloadClassesforThread1:I

    .line 521
    const/16 v0, 0x2bc

    sput v0, numberOfPreloadClassesforThread2:I

    .line 525
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.database.CursorWindow"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.database.CursorWindow$1"

    aput-object v2, v0, v1

    sput-object v0, postLoadClasses:[Ljava/lang/String;

    .line 528
    sput v3, thread1time:I

    .line 529
    sput v3, thread2time:I

    .line 530
    sput v3, threadMtime:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    return-void
.end method

.method private static acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 4
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 209
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 210
    :catch_c
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 70
    invoke-static {}, preloadResources()V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 70
    sget v0, numberOfPreloadClassesforThread1:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 70
    sget v0, PRELOAD_GC_THRESHOLD:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, thread1time:I

    return p0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 70
    sget v0, numberOfPreloadClassesforThread2:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, thread2time:I

    return p0
.end method

.method private static adjustClassPreloadBalance()V
    .registers 5

    .prologue
    .line 394
    sget v2, thread1time:I

    if-lez v2, :cond_92

    sget v2, thread2time:I

    if-lez v2, :cond_92

    sget v2, threadMtime:I

    if-lez v2, :cond_92

    .line 398
    sget v2, thread1time:I

    sget v3, thread2time:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 399
    .local v1, "min":I
    sget v2, threadMtime:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 400
    sget v2, thread1time:I

    sget v3, thread2time:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 401
    .local v0, "max":I
    sget v2, threadMtime:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 402
    sub-int v2, v0, v1

    const/16 v3, 0x64

    if-le v2, v3, :cond_92

    .line 404
    const-string v2, "Zygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " adjust "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget v2, thread1time:I

    if-ne v0, v2, :cond_93

    .line 406
    const-string/jumbo v2, "persist.sys.clssprld1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, numberOfPreloadClassesforThread1:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_71
    :goto_71
    sget v2, thread1time:I

    if-ne v1, v2, :cond_b5

    .line 411
    const-string/jumbo v2, "persist.sys.clssprld1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, numberOfPreloadClassesforThread1:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_92
    :goto_92
    return-void

    .line 407
    :cond_93
    sget v2, thread2time:I

    if-ne v0, v2, :cond_71

    .line 408
    const-string/jumbo v2, "persist.sys.clssprld2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, numberOfPreloadClassesforThread2:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    .line 412
    :cond_b5
    sget v2, thread2time:I

    if-ne v1, v2, :cond_92

    .line 413
    const-string/jumbo v2, "persist.sys.clssprld2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, numberOfPreloadClassesforThread2:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92
.end method

.method static closeServerSocket()V
    .registers 4

    .prologue
    .line 222
    :try_start_0
    sget-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_14

    .line 223
    sget-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 224
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 225
    if-eqz v1, :cond_14

    .line 226
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_18
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_14} :catch_21

    .line 235
    :cond_14
    :goto_14
    const/4 v2, 0x0

    sput-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    .line 236
    return-void

    .line 229
    :catch_18
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing sockets"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 231
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_21
    move-exception v0

    .line 232
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing descriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method static native createFileDescriptor(I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static gc()V
    .registers 1

    .prologue
    .line 953
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 958
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 959
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 960
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 961
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 962
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 963
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 964
    return-void
.end method

.method static getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .registers 1

    .prologue
    .line 245
    sget-object v0, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static native getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 9
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 973
    invoke-static {}, closeServerSocket()V

    .line 976
    sget v4, Landroid/system/OsConstants;->S_IRWXG:I

    sget v5, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v4, v5

    invoke-static {v4}, Landroid/system/Os;->umask(I)I

    .line 978
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 979
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 982
    :cond_15
    const-string v4, "SYSTEMSERVERCLASSPATH"

    invoke-static {v4}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, "systemServerClasspath":Ljava/lang/String;
    if-eqz v3, :cond_20

    .line 984
    invoke-static {v3}, performSystemServerDexOpt(Ljava/lang/String;)V

    .line 987
    :cond_20
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v4, :cond_48

    .line 988
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 992
    .local v1, "args":[Ljava/lang/String;
    if-eqz v3, :cond_3d

    .line 993
    array-length v4, v1

    add-int/lit8 v4, v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .line 994
    .local v0, "amendedArgs":[Ljava/lang/String;
    const-string v4, "-cp"

    aput-object v4, v0, v7

    .line 995
    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 996
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    .end local v0    # "amendedArgs":[Ljava/lang/String;
    :cond_3d
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1016
    .end local v1    # "args":[Ljava/lang/String;
    :goto_47
    return-void

    .line 1003
    :cond_48
    const/4 v2, 0x0

    .line 1004
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_5b

    .line 1005
    new-instance v2, Ldalvik/system/PathClassLoader;

    .end local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1006
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1012
    :cond_5b
    iget v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_47
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .registers 2
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 1200
    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_3c

    move-result-object v0

    .line 153
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4
    const-string/jumbo v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_12} :catch_56
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_12} :catch_70

    move-result-object v2

    .line 162
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 163
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 164
    :cond_23
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "modifiers":I
    :catch_3c
    move-exception v1

    .line 146
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 154
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_56
    move-exception v1

    .line 155
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 157
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_70
    move-exception v1

    .line 158
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 174
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "modifiers":I
    :cond_8a
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p2}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 1128
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    .line 1129
    .local v4, "mSavedPriority":I
    const/4 v7, -0x4

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1133
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 1135
    const/4 v6, 0x0

    .line 1136
    .local v6, "startSystemServer":Z
    const-string/jumbo v5, "zygote"

    .line 1137
    .local v5, "socketName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1138
    .local v0, "abiList":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_15
    array-length v7, p0

    if-ge v3, v7, :cond_75

    .line 1139
    const-string/jumbo v7, "start-system-server"

    aget-object v8, p0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1140
    const/4 v6, 0x1

    .line 1138
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1141
    :cond_27
    aget-object v7, p0, v3

    const-string v8, "--abi-list="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1142
    aget-object v7, p0, v3

    const-string v8, "--abi-list="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 1143
    :cond_3e
    aget-object v7, p0, v3

    const-string v8, "--socket-name="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 1144
    aget-object v7, p0, v3

    const-string v8, "--socket-name="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_24

    .line 1146
    :cond_55
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown command line argument: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_70
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_70} :catch_70
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_70} :catch_7f

    .line 1183
    .end local v0    # "abiList":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "mSavedPriority":I
    .end local v5    # "socketName":Ljava/lang/String;
    .end local v6    # "startSystemServer":Z
    :catch_70
    move-exception v1

    .line 1184
    .local v1, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 1190
    .end local v1    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_74
    return-void

    .line 1150
    .restart local v0    # "abiList":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "mSavedPriority":I
    .restart local v5    # "socketName":Ljava/lang/String;
    .restart local v6    # "startSystemServer":Z
    :cond_75
    if-nez v0, :cond_8b

    .line 1151
    :try_start_77
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "No ABI list supplied."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7f
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_77 .. :try_end_7f} :catch_70
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_7f} :catch_7f

    .line 1185
    .end local v0    # "abiList":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "mSavedPriority":I
    .end local v5    # "socketName":Ljava/lang/String;
    .end local v6    # "startSystemServer":Z
    :catch_7f
    move-exception v2

    .line 1186
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v7, "Zygote"

    const-string v8, "Zygote died with exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    invoke-static {}, closeServerSocket()V

    .line 1188
    throw v2

    .line 1154
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "abiList":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "mSavedPriority":I
    .restart local v5    # "socketName":Ljava/lang/String;
    .restart local v6    # "startSystemServer":Z
    :cond_8b
    :try_start_8b
    invoke-static {v5}, registerZygoteSocket(Ljava/lang/String;)V

    .line 1155
    const/16 v7, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1157
    invoke-static {}, preload()V

    .line 1158
    const/16 v7, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1162
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 1165
    invoke-static {}, gc()V

    .line 1169
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 1172
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1175
    if-eqz v6, :cond_b5

    .line 1176
    invoke-static {v0, v5}, startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1179
    :cond_b5
    const-string v7, "Zygote"

    const-string v8, "Accepting command socket connections"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-static {v0}, runSelectLoop(Ljava/lang/String;)V

    .line 1182
    invoke-static {}, closeServerSocket()V
    :try_end_c2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_8b .. :try_end_c2} :catch_70
    .catch Ljava/lang/RuntimeException; {:try_start_8b .. :try_end_c2} :catch_7f

    goto :goto_74
.end method

.method static parallelpreloadClasses()V
    .registers 28

    .prologue
    .line 534
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v13

    .line 535
    .local v13, "runtime":Ldalvik/system/VMRuntime;
    new-instance v5, Ljava/util/ArrayList;

    const/16 v19, 0xbc5

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    .local v5, "classList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v19, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    const-string/jumbo v24, "preloaded-classes"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 539
    .local v10, "is":Ljava/io/InputStream;
    if-nez v10, :cond_2c

    .line 540
    const-string v19, "Zygote"

    const-string v24, "Couldn\'t find preloaded-classes."

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :goto_2b
    return-void

    .line 542
    :cond_2c
    const-string v19, "Zygote"

    const-string v24, "Preloading classes..."

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v7

    .line 551
    .local v7, "defaultUtilization":F
    const v19, 0x3f4ccccd    # 0.8f

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 554
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 555
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 556
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 559
    :try_start_4c
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v24, 0x100

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 562
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 564
    .local v6, "count":I
    :cond_5f
    :goto_5f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_83

    .line 566
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 567
    const-string v19, "#"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5f

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5f

    .line 570
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 576
    :cond_83
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Number of total Classes to prelaod: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sput v6, numberOfPreloadClasses:I

    .line 596
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Classes to load for thread1 0~"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClassesforThread1:I

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Classes to load for thread2 "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClassesforThread1:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "~"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClassesforThread1:I

    sget v26, numberOfPreloadClassesforThread2:I

    add-int v25, v25, v26

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Classes to load for thread3 "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClassesforThread1:I

    sget v26, numberOfPreloadClassesforThread2:I

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "~"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClasses:I

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v17, Ljava/lang/Thread;

    new-instance v19, Lcom/android/internal/os/ZygoteInit$3;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v13}, Lcom/android/internal/os/ZygoteInit$3;-><init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 672
    .local v17, "t1":Ljava/lang/Thread;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 674
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/android/internal/os/ZygoteInit$4;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v13}, Lcom/android/internal/os/ZygoteInit$4;-><init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 747
    .local v18, "t2":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 751
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 752
    .local v14, "startTime":J
    const-wide/16 v20, 0x0

    .line 753
    .local v20, "time1":J
    const-wide/16 v22, 0x0

    .line 754
    .local v22, "time2":J
    sget v19, numberOfPreloadClassesforThread1:I

    sget v24, numberOfPreloadClassesforThread2:I

    add-int v9, v19, v24

    .local v9, "i":I
    :goto_155
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_165

    .line 755
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "line":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 756
    .restart local v12    # "line":Ljava/lang/String;
    if-nez v12, :cond_20f

    .line 804
    :cond_165
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "!@prldclssM: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClasses:I

    sget v26, numberOfPreloadClassesforThread1:I

    sub-int v25, v25, v26

    sget v26, numberOfPreloadClassesforThread2:I

    sub-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " classes in "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v14

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "ms."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    sput v19, threadMtime:I

    .line 809
    :goto_1b1
    sget-boolean v19, parallelPCThread1running:Z

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c5

    sget-boolean v19, parallelPCThread2running:Z
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_1bd} :catch_1f5
    .catchall {:try_start_4c .. :try_end_1bd} :catchall_289

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e4

    .line 811
    :cond_1c5
    const-wide/16 v24, 0x14

    :try_start_1c7
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1ca
    .catch Ljava/lang/InterruptedException; {:try_start_1c7 .. :try_end_1ca} :catch_2de
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ca} :catch_1f5
    .catchall {:try_start_1c7 .. :try_end_1ca} :catchall_289

    .line 815
    :goto_1ca
    :try_start_1ca
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Wait PC Thread 1="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, parallelPCThread1running:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " 2="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, parallelPCThread2running:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1f4} :catch_1f5
    .catchall {:try_start_1ca .. :try_end_1f4} :catchall_289

    goto :goto_1b1

    .line 827
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "count":I
    .end local v9    # "i":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "startTime":J
    .end local v17    # "t1":Ljava/lang/Thread;
    .end local v18    # "t2":Ljava/lang/Thread;
    .end local v20    # "time1":J
    .end local v22    # "time2":J
    :catch_1f5
    move-exception v8

    .line 828
    .local v8, "e":Ljava/io/IOException;
    :try_start_1f6
    const-string v19, "Zygote"

    const-string v24, "Error reading preloaded-classes."

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_201
    .catchall {:try_start_1f6 .. :try_end_201} :catchall_289

    .line 832
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 834
    invoke-virtual {v13, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 837
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 839
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto/16 :goto_2b

    .line 763
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "startTime":J
    .restart local v17    # "t1":Ljava/lang/Thread;
    .restart local v18    # "t2":Ljava/lang/Thread;
    .restart local v20    # "time1":J
    .restart local v22    # "time2":J
    :cond_20f
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_210
    :try_start_210
    sget-object v19, postLoadClasses:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_247

    .line 766
    sget-object v19, postLoadClasses:[Ljava/lang/String;

    aget-object v19, v19, v11

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24d

    .line 767
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "postpone "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v12, 0x0

    .line 772
    :cond_247
    if-nez v12, :cond_250

    .line 754
    :cond_249
    :goto_249
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_155

    .line 763
    :cond_24d
    add-int/lit8 v11, v11, 0x1

    goto :goto_210

    .line 776
    :cond_250
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 783
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v19

    sget v24, PRELOAD_GC_THRESHOLD:I

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_249

    .line 787
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 788
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 789
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_268
    .catch Ljava/lang/ClassNotFoundException; {:try_start_210 .. :try_end_268} :catch_269
    .catch Ljava/lang/Throwable; {:try_start_210 .. :try_end_268} :catch_297
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_268} :catch_1f5
    .catchall {:try_start_210 .. :try_end_268} :catchall_289

    goto :goto_249

    .line 791
    :catch_269
    move-exception v8

    .line 792
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    :try_start_26a
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Class not found for preloading: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_288
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_288} :catch_1f5
    .catchall {:try_start_26a .. :try_end_288} :catchall_289

    goto :goto_249

    .line 832
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "count":I
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "startTime":J
    .end local v17    # "t1":Ljava/lang/Thread;
    .end local v18    # "t2":Ljava/lang/Thread;
    .end local v20    # "time1":J
    .end local v22    # "time2":J
    :catchall_289
    move-exception v19

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 834
    invoke-virtual {v13, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 837
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 839
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v19

    .line 793
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "startTime":J
    .restart local v17    # "t1":Ljava/lang/Thread;
    .restart local v18    # "t2":Ljava/lang/Thread;
    .restart local v20    # "time1":J
    .restart local v22    # "time2":J
    :catch_297
    move-exception v16

    .line 794
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_298
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "!@Error preloading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v19, v0

    if-eqz v19, :cond_2c9

    .line 796
    check-cast v16, Ljava/lang/Error;

    .end local v16    # "t":Ljava/lang/Throwable;
    throw v16

    .line 798
    .restart local v16    # "t":Ljava/lang/Throwable;
    :cond_2c9
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v19, v0

    if-eqz v19, :cond_2d4

    .line 799
    check-cast v16, Ljava/lang/RuntimeException;

    .end local v16    # "t":Ljava/lang/Throwable;
    throw v16

    .line 801
    .restart local v16    # "t":Ljava/lang/Throwable;
    :cond_2d4
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 812
    .end local v11    # "j":I
    .end local v16    # "t":Ljava/lang/Throwable;
    :catch_2de
    move-exception v8

    .line 813
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1ca

    .line 818
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_2e4
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_2e5
    sget-object v19, postLoadClasses:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0
    :try_end_2ec
    .catch Ljava/io/IOException; {:try_start_298 .. :try_end_2ec} :catch_1f5
    .catchall {:try_start_298 .. :try_end_2ec} :catchall_289

    move/from16 v0, v19

    if-ge v11, v0, :cond_33b

    .line 821
    :try_start_2f0
    sget-object v19, postLoadClasses:[Ljava/lang/String;

    aget-object v19, v19, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 822
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "post pld="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, postLoadClasses:[Ljava/lang/String;

    aget-object v25, v25, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_318
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f0 .. :try_end_318} :catch_31b
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_318} :catch_1f5
    .catchall {:try_start_2f0 .. :try_end_318} :catchall_289

    .line 818
    :goto_318
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e5

    .line 824
    :catch_31b
    move-exception v8

    .local v8, "e":Ljava/lang/ClassNotFoundException;
    :try_start_31c
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Class not found for preloading: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33a
    .catch Ljava/io/IOException; {:try_start_31c .. :try_end_33a} :catch_1f5
    .catchall {:try_start_31c .. :try_end_33a} :catchall_289

    goto :goto_318

    .line 832
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :cond_33b
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 834
    invoke-virtual {v13, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 837
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 839
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto/16 :goto_2b
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .registers 12
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 1023
    const-string v9, ":"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, "classPathElements":[Ljava/lang/String;
    new-instance v5, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v5}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    .line 1025
    .local v5, "installer":Lcom/android/internal/os/InstallerConnection;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v6

    .line 1028
    .local v6, "instructionSet":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_14
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_16
    if-ge v4, v8, :cond_45

    aget-object v1, v0, v4

    .line 1029
    .local v1, "classPathElement":Ljava/lang/String;
    const-string v9, "*"

    const/4 v10, 0x0

    invoke-static {v1, v9, v6, v10}, Ldalvik/system/DexFile;->isDexOptNeededInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)B

    move-result v3

    .line 1031
    .local v3, "dexopt":B
    const/4 v9, 0x2

    if-ne v3, v9, :cond_2d

    .line 1032
    const/16 v9, 0x3e8

    const/4 v10, 0x0

    invoke-virtual {v5, v1, v9, v10, v6}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;)I

    .line 1028
    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1033
    :cond_2d
    const/4 v9, 0x1

    if-ne v3, v9, :cond_2a

    .line 1034
    const/16 v9, 0x3e8

    const/4 v10, 0x0

    invoke-virtual {v5, v1, v9, v10, v6}, Lcom/android/internal/os/InstallerConnection;->patchoat(Ljava/lang/String;IZLjava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_36} :catch_37
    .catchall {:try_start_14 .. :try_end_36} :catchall_40

    goto :goto_2a

    .line 1037
    .end local v1    # "classPathElement":Ljava/lang/String;
    .end local v3    # "dexopt":B
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    :catch_37
    move-exception v7

    .line 1038
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_38
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error starting system_server"

    invoke-direct {v9, v10, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_40

    .line 1040
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_40
    move-exception v9

    invoke-virtual {v5}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    throw v9

    .restart local v4    # "i$":I
    .restart local v8    # "len$":I
    :cond_45
    invoke-virtual {v5}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    .line 1042
    return-void
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .registers 9
    .param p0, "capabilities"    # [I

    .prologue
    .line 1114
    const-wide/16 v4, 0x0

    .line 1115
    .local v4, "result":J
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_20

    aget v1, v0, v2

    .line 1116
    .local v1, "capability":I
    if-ltz v1, :cond_f

    sget v6, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-le v1, v6, :cond_19

    .line 1117
    :cond_f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1119
    :cond_19
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 1115
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1121
    .end local v1    # "capability":I
    :cond_20
    return-wide v4
.end method

.method static preload()V
    .registers 8

    .prologue
    const/16 v3, 0x270f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 284
    invoke-static {v3}, setEffectiveGroup(I)V

    .line 285
    invoke-static {v3}, setEffectiveUser(I)V

    .line 286
    sput-boolean v7, isParallelThreadRunning:Z

    .line 288
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/os/ZygoteInit$1;

    invoke-direct {v3}, Lcom/android/internal/os/ZygoteInit$1;-><init>()V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 301
    .local v1, "pprr":Ljava/lang/Thread;
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 302
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 304
    const-string/jumbo v3, "libc.debug.malloc"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_34

    .line 305
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/os/ZygoteInit$2;

    invoke-direct {v3}, Lcom/android/internal/os/ZygoteInit$2;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 329
    .local v2, "preloadMonitor":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 333
    .end local v2    # "preloadMonitor":Ljava/lang/Thread;
    :cond_34
    const-string v3, "Zygote"

    const-string v4, "!@Boot: beginofpreloadClasses()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, parallelpreloadClasses()V

    .line 336
    const-string v3, "Zygote"

    const-string v4, "!@Boot: EndofpreloadClasses()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, preloadOpenGL()V

    .line 338
    invoke-static {}, preloadSharedLibraries()V

    .line 341
    const-string v3, "Zygote"

    const-string v4, "!@Boot: beginofpreparewebview()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 343
    const-string v3, "Zygote"

    const-string v4, "!@Boot: endofpreparewebview()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_5c
    sget-boolean v3, isParallelThreadRunning:Z

    if-eqz v3, :cond_7a

    sget-boolean v3, isError:Z

    if-nez v3, :cond_7a

    .line 347
    const-string v3, "Zygote"

    const-string v4, "Waiting Preload Resource"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-wide/16 v4, 0x14

    :try_start_6d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_5c

    .line 349
    :catch_71
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Zygote"

    const-string v4, "Exception in Zygote PC/PR Parallel thread."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 351
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_7a
    sput-boolean v7, isPreloadComplete:Z

    .line 353
    invoke-static {v6}, setEffectiveUser(I)V

    .line 354
    invoke-static {v6}, setEffectiveGroup(I)V

    .line 376
    return-void
.end method

.method private static preloadClasses()V
    .registers 15

    .prologue
    const/16 v12, 0x270f

    const/4 v14, 0x0

    .line 426
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 428
    .local v6, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string/jumbo v11, "preloaded-classes"

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 430
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_1c

    .line 431
    const-string v10, "Zygote"

    const-string v11, "Couldn\'t find preloaded-classes."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_1b
    return-void

    .line 433
    :cond_1c
    const-string v10, "Zygote"

    const-string v11, "Preloading classes..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 437
    .local v8, "startTime":J
    invoke-static {v12}, setEffectiveGroup(I)V

    .line 438
    invoke-static {v12}, setEffectiveUser(I)V

    .line 442
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 443
    .local v2, "defaultUtilization":F
    const v10, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v10}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 446
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 447
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 448
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 451
    :try_start_40
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x100

    invoke-direct {v0, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 454
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 456
    .local v1, "count":I
    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_11d

    .line 458
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 459
    const-string v10, "#"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4d

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_64} :catch_95
    .catchall {:try_start_40 .. :try_end_64} :catchall_d6

    move-result v10

    if-nez v10, :cond_4d

    .line 467
    :try_start_67
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 468
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v10

    sget v11, PRELOAD_GC_THRESHOLD:I

    if-le v10, v11, :cond_78

    .line 473
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 474
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_78} :catch_7b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_67 .. :try_end_78} :catch_b1
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_78} :catch_ea
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_78} :catch_95
    .catchall {:try_start_67 .. :try_end_78} :catchall_d6

    .line 476
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 477
    :catch_7b
    move-exception v3

    .line 478
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_7c
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class not found for preloading: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_94} :catch_95
    .catchall {:try_start_7c .. :try_end_94} :catchall_d6

    goto :goto_4d

    .line 495
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "line":Ljava/lang/String;
    :catch_95
    move-exception v3

    .line 496
    .local v3, "e":Ljava/io/IOException;
    :try_start_96
    const-string v10, "Zygote"

    const-string v11, "Error reading preloaded-classes."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_d6

    .line 498
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 500
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 503
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 505
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 508
    invoke-static {v14}, setEffectiveUser(I)V

    .line 509
    invoke-static {v14}, setEffectiveGroup(I)V

    goto/16 :goto_1b

    .line 479
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v5    # "line":Ljava/lang/String;
    :catch_b1
    move-exception v3

    .line 480
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_b2
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_d4} :catch_95
    .catchall {:try_start_b2 .. :try_end_d4} :catchall_d6

    goto/16 :goto_4d

    .line 498
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v5    # "line":Ljava/lang/String;
    :catchall_d6
    move-exception v10

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 500
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 503
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 505
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 508
    invoke-static {v14}, setEffectiveUser(I)V

    .line 509
    invoke-static {v14}, setEffectiveGroup(I)V

    throw v10

    .line 481
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v5    # "line":Ljava/lang/String;
    :catch_ea
    move-exception v7

    .line 482
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_eb
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    instance-of v10, v7, Ljava/lang/Error;

    if-eqz v10, :cond_110

    .line 484
    check-cast v7, Ljava/lang/Error;

    .end local v7    # "t":Ljava/lang/Throwable;
    throw v7

    .line 486
    .restart local v7    # "t":Ljava/lang/Throwable;
    :cond_110
    instance-of v10, v7, Ljava/lang/RuntimeException;

    if-eqz v10, :cond_117

    .line 487
    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "t":Ljava/lang/Throwable;
    throw v7

    .line 489
    .restart local v7    # "t":Ljava/lang/Throwable;
    :cond_117
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 492
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_11d
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 493
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "...preloaded "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " classes in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_14e} :catch_95
    .catchall {:try_start_eb .. :try_end_14e} :catchall_d6

    .line 498
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 500
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 503
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 505
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 508
    invoke-static {v14}, setEffectiveUser(I)V

    .line 509
    invoke-static {v14}, setEffectiveGroup(I)V

    goto/16 :goto_1b
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .registers 8
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 893
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 894
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_58

    .line 895
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    sget v4, PRELOAD_GC_THRESHOLD:I

    if-le v3, v4, :cond_15

    .line 899
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 900
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 902
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 906
    .local v2, "id":I
    if-eqz v2, :cond_55

    .line 907
    sget-object v3, mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_55

    .line 908
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 894
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 915
    .end local v2    # "id":I
    :cond_58
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 916
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .registers 8
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 922
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_59

    .line 923
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    sget v4, PRELOAD_GC_THRESHOLD:I

    if-le v3, v4, :cond_15

    .line 927
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 928
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 930
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 934
    .local v2, "id":I
    if-eqz v2, :cond_56

    .line 935
    sget-object v3, mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_56

    .line 936
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 922
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 943
    .end local v2    # "id":I
    :cond_59
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 944
    return v0
.end method

.method private static preloadOpenGL()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 386
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 387
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 389
    :cond_d
    return-void
.end method

.method private static preloadResources()V
    .registers 10

    .prologue
    .line 857
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 859
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 861
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 862
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 863
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, mResources:Landroid/content/res/Resources;

    .line 864
    sget-object v6, mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 866
    const-string v6, "Zygote"

    const-string v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 869
    .local v4, "startTime":J
    sget-object v6, mResources:Landroid/content/res/Resources;

    const v7, 0x1070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 871
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 872
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 873
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 877
    sget-object v6, mResources:Landroid/content/res/Resources;

    const v7, 0x1070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 879
    invoke-static {v3, v1}, preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 880
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 881
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object v6, mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_a8
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a8} :catch_ac
    .catchall {:try_start_7 .. :try_end_a8} :catchall_b8

    .line 888
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 890
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_ab
    return-void

    .line 885
    :catch_ac
    move-exception v2

    .line 886
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_ad
    const-string v6, "Zygote"

    const-string v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_b8

    .line 888
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto :goto_ab

    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_b8
    move-exception v6

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v6
.end method

.method private static preloadSharedLibraries()V
    .registers 2

    .prologue
    .line 379
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 381
    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private static registerZygoteSocket(Ljava/lang/String;)V
    .registers 8
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v4, sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v4, :cond_2a

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_SOCKET_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "fullSocketName":Ljava/lang/String;
    :try_start_17
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1e} :catch_2b

    move-result v2

    .line 194
    .local v2, "fileDesc":I
    :try_start_1f
    new-instance v4, Landroid/net/LocalServerSocket;

    invoke-static {v2}, createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v4, sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_45

    .line 201
    .end local v0    # "env":Ljava/lang/String;
    .end local v2    # "fileDesc":I
    .end local v3    # "fullSocketName":Ljava/lang/String;
    :cond_2a
    return-void

    .line 189
    .restart local v3    # "fullSocketName":Ljava/lang/String;
    :catch_2b
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unset or invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 196
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Ljava/lang/String;
    .restart local v2    # "fileDesc":I
    :catch_45
    move-exception v1

    .line 197
    .local v1, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error binding to local socket \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static native reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static runSelectLoop(Ljava/lang/String;)V
    .registers 12
    .param p0, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 1231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .local v4, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    .local v8, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    const/4 v9, 0x4

    new-array v3, v9, [Ljava/io/FileDescriptor;

    .line 1235
    .local v3, "fdArray":[Ljava/io/FileDescriptor;
    sget-object v9, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v9}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    const/16 v6, 0xa

    .line 1251
    .local v6, "loopCount":I
    :cond_1c
    :goto_1c
    if-gtz v6, :cond_39

    .line 1252
    invoke-static {}, gc()V

    .line 1253
    const/16 v6, 0xa

    .line 1260
    :goto_23
    :try_start_23
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/io/FileDescriptor;

    move-object v3, v0

    .line 1261
    invoke-static {v3}, selectReadable([Ljava/io/FileDescriptor;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_3c

    move-result v5

    .line 1266
    .local v5, "index":I
    if-gez v5, :cond_45

    .line 1267
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1255
    .end local v5    # "index":I
    :cond_39
    add-int/lit8 v6, v6, -0x1

    goto :goto_23

    .line 1262
    :catch_3c
    move-exception v2

    .line 1263
    .local v2, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1268
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v5    # "index":I
    :cond_45
    if-nez v5, :cond_56

    .line 1269
    invoke-static {p0}, acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    .line 1270
    .local v7, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1274
    .end local v7    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_56
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v9}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    .line 1276
    .local v1, "done":Z
    if-eqz v1, :cond_1c

    .line 1277
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1278
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1c
.end method

.method static native selectReadable([Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCloseOnExec(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static setEffectiveGroup(I)V
    .registers 5
    .param p0, "gid"    # I

    .prologue
    .line 268
    const/4 v1, 0x0

    invoke-static {v1, p0}, setregid(II)I

    move-result v0

    .line 269
    .local v0, "errno":I
    if-eqz v0, :cond_20

    .line 270
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setregid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_20
    return-void
.end method

.method private static setEffectiveUser(I)V
    .registers 5
    .param p0, "uid"    # I

    .prologue
    .line 258
    const/4 v1, 0x0

    invoke-static {v1, p0}, setreuid(II)I

    move-result v0

    .line 259
    .local v0, "errno":I
    if-eqz v0, :cond_20

    .line 260
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setreuid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_20
    return-void
.end method

.method static native setpgid(II)I
.end method

.method static native setregid(II)I
.end method

.method static native setreuid(II)I
.end method

.method private static startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1049
    const/16 v1, 0xb

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Landroid/system/OsConstants;->CAP_KILL:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Landroid/system/OsConstants;->CAP_NET_RAW:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    aput v3, v1, v2

    const/16 v2, 0xa

    sget v3, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    aput v3, v1, v2

    invoke-static {v1}, posixCapabilitiesAsBits([I)J

    move-result-wide v10

    .line 1063
    .local v10, "capabilities":J
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--setuid=1000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--setgid=1000"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1032,3001,3002,3003,3004,3005,3006,3007"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "--runtime-init"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "--nice-name=system_server"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.server.SystemServer"

    aput-object v2, v0, v1

    .line 1077
    .local v0, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1082
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_84
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_89} :catch_b2

    .line 1083
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_89
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1084
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1087
    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    const/4 v5, 0x0

    check-cast v5, [[I

    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_a1} :catch_b9

    move-result v15

    .line 1099
    .local v15, "pid":I
    if-nez v15, :cond_b0

    .line 1100
    invoke-static/range {p0 .. p0}, hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 1101
    invoke-static/range {p1 .. p1}, waitForSecondaryZygote(Ljava/lang/String;)V

    .line 1104
    :cond_ad
    invoke-static {v14}, handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1107
    :cond_b0
    const/4 v1, 0x1

    return v1

    .line 1094
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_b2
    move-exception v12

    .line 1095
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_b3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1094
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_b9
    move-exception v12

    move-object v13, v14

    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_b3
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .registers 7
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 1204
    const-string/jumbo v3, "zygote"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string/jumbo v1, "zygote_secondary"

    .line 1208
    .local v1, "otherZygoteName":Ljava/lang/String;
    :goto_c
    :try_start_c
    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v2

    .line 1209
    .local v2, "zs":Landroid/os/Process$ZygoteState;
    invoke-virtual {v2}, Landroid/os/Process$ZygoteState;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_18

    .line 1220
    return-void

    .line 1204
    .end local v1    # "otherZygoteName":Ljava/lang/String;
    .end local v2    # "zs":Landroid/os/Process$ZygoteState;
    :cond_14
    const-string/jumbo v1, "zygote"

    goto :goto_c

    .line 1211
    .restart local v1    # "otherZygoteName":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 1212
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const-wide/16 v4, 0x3e8

    :try_start_37
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_c

    .line 1217
    :catch_3b
    move-exception v3

    goto :goto_c
.end method
