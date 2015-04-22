.class Landroid/media/AudioService$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerInfo"
.end annotation


# instance fields
.field private mIsfocussed:Z

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Ljava/lang/String;Z)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isfocussed"    # Z

    .prologue
    .line 189
    iput-object p1, p0, this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 191
    iput-boolean p3, p0, mIsfocussed:Z

    .line 192
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isFocussed()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, mIsfocussed:Z

    return v0
.end method

.method public setFocus(Z)V
    .registers 2
    .param p1, "focus"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, mIsfocussed:Z

    .line 198
    return-void
.end method
