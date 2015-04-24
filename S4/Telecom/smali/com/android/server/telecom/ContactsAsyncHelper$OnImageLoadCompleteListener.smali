.class public Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageLoadCompleteListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    if-eqz p4, :cond_0

    .line 183
    check-cast p4, Lcom/android/server/telecom/Call;

    invoke-static {p4, p2, p3, p1}, Lcom/android/server/telecom/Call;->access$200(Lcom/android/server/telecom/Call;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V

    .line 185
    :cond_0
    return-void
.end method
