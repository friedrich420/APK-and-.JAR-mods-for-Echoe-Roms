.class public Lcom/sec/android/provider/logsprovider/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput p1, p0, Lcom/sec/android/provider/logsprovider/HanziToPinyin$Token;->type:I

    .line 314
    iput-object p2, p0, Lcom/sec/android/provider/logsprovider/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 315
    iput-object p3, p0, Lcom/sec/android/provider/logsprovider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 316
    return-void
.end method
