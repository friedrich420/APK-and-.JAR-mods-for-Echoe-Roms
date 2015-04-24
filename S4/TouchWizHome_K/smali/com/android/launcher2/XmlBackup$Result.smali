.class Lcom/android/launcher2/XmlBackup$Result;
.super Ljava/lang/Object;
.source "XmlBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/XmlBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Result"
.end annotation


# instance fields
.field public err_code:I

.field public result:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput v0, p0, Lcom/android/launcher2/XmlBackup$Result;->result:I

    .line 671
    iput v0, p0, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/XmlBackup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/XmlBackup$1;

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/launcher2/XmlBackup$Result;-><init>()V

    return-void
.end method
