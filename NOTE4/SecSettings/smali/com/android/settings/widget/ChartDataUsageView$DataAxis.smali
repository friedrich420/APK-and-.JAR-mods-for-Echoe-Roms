.class public Lcom/android/settings/widget/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAxis"
.end annotation


# static fields
.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 579
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 15
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "value"    # J

    .prologue
    .line 588
    const-wide/32 v10, 0x3e800000

    cmp-long v10, p3, v10

    if-gez v10, :cond_1

    .line 589
    const v10, 0x104007a

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 590
    .local v7, "unit":Ljava/lang/CharSequence;
    const-wide/32 v8, 0x100000

    .line 597
    .local v8, "unitFactor":J
    :goto_0
    const-string v10, "VZW"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 598
    sget v10, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 599
    const v10, 0x104007a

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 600
    const-wide/32 v8, 0x100000

    .line 608
    :cond_0
    :goto_1
    move-wide/from16 v0, p3

    long-to-double v10, v0

    long-to-double v12, v8

    div-double v2, v10, v12

    .line 612
    .local v2, "result":D
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpg-double v10, v2, v10

    if-gez v10, :cond_3

    .line 613
    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 614
    .local v6, "size":Ljava/lang/CharSequence;
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    mul-long/2addr v10, v8

    const-wide/16 v12, 0xa

    div-long/2addr v10, v12

    long-to-double v4, v10

    .line 620
    .local v4, "resultRounded":D
    :goto_2
    sget-object v10, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    const-string v11, "^1"

    move-object/from16 v0, p2

    # invokes: Lcom/android/settings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    invoke-static {v0, v10, v6, v11}, Lcom/android/settings/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 621
    sget-object v10, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    const-string v11, "^2"

    move-object/from16 v0, p2

    # invokes: Lcom/android/settings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    invoke-static {v0, v10, v7, v11}, Lcom/android/settings/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 623
    double-to-long v10, v4

    return-wide v10

    .line 592
    .end local v2    # "result":D
    .end local v4    # "resultRounded":D
    .end local v6    # "size":Ljava/lang/CharSequence;
    .end local v7    # "unit":Ljava/lang/CharSequence;
    .end local v8    # "unitFactor":J
    :cond_1
    const v10, 0x104007b

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 593
    .restart local v7    # "unit":Ljava/lang/CharSequence;
    const-wide/32 v8, 0x40000000

    .restart local v8    # "unitFactor":J
    goto :goto_0

    .line 601
    :cond_2
    sget v10, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 602
    const v10, 0x104007b

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 603
    const-wide/32 v8, 0x40000000

    goto :goto_1

    .line 616
    .restart local v2    # "result":D
    :cond_3
    const-string v10, "%.0f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 617
    .restart local v6    # "size":Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    mul-long/2addr v10, v8

    long-to-double v4, v10

    .restart local v4    # "resultRounded":D
    goto :goto_2
.end method

.method public convertToPoint(J)F
    .locals 7
    .param p1, "value"    # J

    .prologue
    .line 563
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 6
    .param p1, "point"    # F

    .prologue
    .line 575
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 14

    .prologue
    .line 628
    iget-wide v10, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v12, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v2, v10, v12

    .line 631
    .local v2, "range":J
    const-wide/16 v10, 0x10

    div-long v10, v2, v10

    # invokes: Lcom/android/settings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J
    invoke-static {v10, v11}, Lcom/android/settings/widget/ChartDataUsageView;->access$900(J)J

    move-result-wide v4

    .line 632
    .local v4, "tickJump":J
    div-long v10, v2, v4

    long-to-int v1, v10

    .line 633
    .local v1, "tickCount":I
    new-array v6, v1, [F

    .line 634
    .local v6, "tickPoints":[F
    iget-wide v8, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 635
    .local v8, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 636
    invoke-virtual {p0, v8, v9}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v7

    aput v7, v6, v0

    .line 637
    add-long/2addr v8, v4

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 530
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 3
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 535
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 536
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 537
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    .line 538
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(F)Z
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 546
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 547
    iput p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    .line 548
    const/4 v0, 0x1

    .line 550
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAdjustAxis(J)I
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 645
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v0

    .line 646
    .local v0, "point":F
    float-to-double v2, v0

    iget v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 647
    const/4 v1, -0x1

    .line 651
    :goto_0
    return v1

    .line 648
    :cond_0
    float-to-double v2, v0

    iget v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v4, v1

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 649
    const/4 v1, 0x1

    goto :goto_0

    .line 651
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
