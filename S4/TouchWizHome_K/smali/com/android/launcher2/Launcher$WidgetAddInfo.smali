.class Lcom/android/launcher2/Launcher$WidgetAddInfo;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetAddInfo"
.end annotation


# instance fields
.field public mAllowDuplicate:Z

.field public mComponentName:Landroid/content/ComponentName;

.field public mSizeX:I

.field public mSizeY:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2288
    iput v0, p0, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iput v0, p0, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/Launcher$1;

    .prologue
    .line 2285
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$WidgetAddInfo;-><init>()V

    return-void
.end method
