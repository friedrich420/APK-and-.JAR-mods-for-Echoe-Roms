.class public Landroid/text/method/SingleLineTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "SingleLineTransformationMethod.java"


# static fields
.field private static ORIGINAL:[C

.field private static REPLACEMENT:[C

.field private static sInstance:Landroid/text/method/SingleLineTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 26
    new-array v0, v1, [C

    fill-array-data v0, :array_10

    sput-object v0, ORIGINAL:[C

    .line 27
    new-array v0, v1, [C

    fill-array-data v0, :array_16

    sput-object v0, REPLACEMENT:[C

    return-void

    .line 26
    :array_10
    .array-data 2
        0xas
        0xds
    .end array-data

    .line 27
    :array_16
    .array-data 2
        0x20s
        -0x101s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/SingleLineTransformationMethod;
    .registers 1

    .prologue
    .line 45
    sget-object v0, sInstance:Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v0, :cond_7

    .line 46
    sget-object v0, sInstance:Landroid/text/method/SingleLineTransformationMethod;

    .line 49
    :goto_6
    return-object v0

    .line 48
    :cond_7
    new-instance v0, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Landroid/text/method/SingleLineTransformationMethod;

    .line 49
    sget-object v0, sInstance:Landroid/text/method/SingleLineTransformationMethod;

    goto :goto_6
.end method


# virtual methods
.method protected getOriginal()[C
    .registers 2

    .prologue
    .line 33
    sget-object v0, ORIGINAL:[C

    return-object v0
.end method

.method protected getReplacement()[C
    .registers 2

    .prologue
    .line 41
    sget-object v0, REPLACEMENT:[C

    return-object v0
.end method
