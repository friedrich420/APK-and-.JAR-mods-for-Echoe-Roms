.class public Lcom/android/settings/UserSpinnerAdapter$UserDetails;
.super Ljava/lang/Object;
.source "UserSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetails"
.end annotation


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final mUserHandle:Landroid/os/UserHandle;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "um"    # Landroid/os/UserManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    .line 50
    iget-object v3, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 51
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    const-string v1, ""

    .line 52
    .local v1, "mUsername":Ljava/lang/String;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_0

    .line 53
    const v3, 0x7f0a0e08

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    :goto_0
    iput-object v1, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 61
    invoke-static {p3, v0}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    .line 65
    :goto_1
    return-void

    .line 56
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 63
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/UserSpinnerAdapter$UserDetails;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    return-object v0
.end method
