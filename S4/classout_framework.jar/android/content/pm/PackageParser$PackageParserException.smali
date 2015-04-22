.class public Landroid/content/pm/PackageParser$PackageParserException;
.super Ljava/lang/Exception;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageParserException"
.end annotation


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 5133
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5134
    iput p1, p0, error:I

    .line 5135
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 5138
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5139
    iput p1, p0, error:I

    .line 5140
    return-void
.end method
