.class public final Landroid/media/TimedText$Font;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation


# instance fields
.field public final ID:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, ID:I

    .line 282
    iput-object p2, p0, name:Ljava/lang/String;

    .line 283
    return-void
.end method
