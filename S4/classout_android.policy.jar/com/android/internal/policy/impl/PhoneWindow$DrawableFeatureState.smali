.class final Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawableFeatureState"
.end annotation


# instance fields
.field alpha:I

.field child:Landroid/graphics/drawable/Drawable;

.field cur:Landroid/graphics/drawable/Drawable;

.field curAlpha:I

.field def:Landroid/graphics/drawable/Drawable;

.field final featureId:I

.field local:Landroid/graphics/drawable/Drawable;

.field resid:I

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "_featureId"    # I

    .prologue
    const/16 v0, 0xff

    .line 4588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4606
    iput v0, p0, alpha:I

    .line 4608
    iput v0, p0, curAlpha:I

    .line 4589
    iput p1, p0, featureId:I

    .line 4590
    return-void
.end method
