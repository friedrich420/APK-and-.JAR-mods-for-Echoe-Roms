.class public final Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedSurfaceState"
.end annotation


# instance fields
.field public height:I

.field public final surface:Landroid/view/Surface;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .locals 0
    .param p1, "s"    # Landroid/view/Surface;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    .line 388
    iput p2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    .line 389
    iput p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    .line 390
    return-void
.end method
