.class public Lcom/android/launcher2/RotateHelper;
.super Ljava/lang/Object;
.source "RotateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStyle(ILandroid/view/View;)V
    .locals 3
    .param p0, "resid"    # I
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ShadowStyleable;->View:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method public static applyStyle(ILandroid/widget/LinearLayout;)V
    .locals 3
    .param p0, "resid"    # I
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 49
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ShadowStyleable;->LinearLayout:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setLinearLayoutAttributes(Landroid/content/res/TypedArray;Landroid/widget/LinearLayout;)V

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method

.method public static applyStyle(ILandroid/widget/TextView;)V
    .locals 3
    .param p0, "resid"    # I
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 68
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method public static applyStyleLayout(ILandroid/view/View;)V
    .locals 8
    .param p0, "resid"    # I
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 104
    .local v5, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_2

    move-object v4, v5

    .line 106
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/ShadowStyleable;->FrameLayout_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/android/launcher2/ShadowStyleable;->FrameLayout_Layout_layout_gravity:I

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_b

    move-object v4, v5

    .line 121
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 124
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_9

    .line 125
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 127
    .local v1, "attr":I
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_width:I

    if-ne v1, v6, :cond_3

    .line 128
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 124
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attr":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 112
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_gravity:I

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 115
    sget v6, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_weight:I

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 130
    .restart local v1    # "attr":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_height:I

    if-ne v1, v6, :cond_4

    .line 131
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    .line 133
    :cond_4
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_margin:I

    if-ne v1, v6, :cond_5

    .line 134
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 137
    :cond_5
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginLeft:I

    if-ne v1, v6, :cond_6

    .line 138
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 140
    :cond_6
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginTop:I

    if-ne v1, v6, :cond_7

    .line 141
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 143
    :cond_7
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginRight:I

    if-ne v1, v6, :cond_8

    .line 144
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 146
    :cond_8
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginBottom:I

    if-ne v1, v6, :cond_1

    .line 147
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 150
    .end local v1    # "attr":I
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    :goto_3
    return-void

    .line 151
    :cond_b
    if-eqz v5, :cond_a

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 154
    .restart local v2    # "count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v2, :cond_e

    .line 155
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 156
    .restart local v1    # "attr":I
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_width:I

    if-ne v1, v6, :cond_d

    .line 157
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 159
    :cond_d
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_height:I

    if-ne v1, v6, :cond_c

    .line 160
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 163
    .end local v1    # "attr":I
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3
.end method

.method public static setLinearLayoutAttributes(Landroid/content/res/TypedArray;Landroid/widget/LinearLayout;)V
    .locals 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 185
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_8

    .line 186
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 188
    .local v0, "attr":I
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_gravity:I

    if-ne v0, v3, :cond_1

    .line 189
    const/16 v3, 0x33

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 185
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_orientation:I

    if-ne v0, v3, :cond_2

    .line 192
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 194
    :cond_2
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_baselineAligned:I

    if-ne v0, v3, :cond_3

    .line 195
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    goto :goto_1

    .line 197
    :cond_3
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_baselineAlignedChildIndex:I

    if-ne v0, v3, :cond_4

    .line 198
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBaselineAlignedChildIndex(I)V

    goto :goto_1

    .line 200
    :cond_4
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_divider:I

    if-ne v0, v3, :cond_5

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 203
    :cond_5
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_measureWithLargestChild:I

    if-ne v0, v3, :cond_6

    .line 204
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    goto :goto_1

    .line 206
    :cond_6
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_showDividers:I

    if-ne v0, v3, :cond_7

    .line 207
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    goto :goto_1

    .line 209
    :cond_7
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_dividerPadding:I

    if-ne v0, v3, :cond_0

    .line 210
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    goto :goto_1

    .line 214
    .end local v0    # "attr":I
    :cond_8
    return-void
.end method

.method public static setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V
    .locals 11
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 235
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 236
    .local v1, "count":I
    const/4 v3, -0x1

    .line 237
    .local v3, "lines":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_8

    .line 238
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 239
    .local v0, "attr":I
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_textSize:I

    if-ne v0, v7, :cond_1

    .line 240
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 241
    .local v4, "newSize":F
    cmpl-float v7, v4, v10

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_0

    .line 242
    invoke-virtual {p1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    .end local v4    # "newSize":F
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_ellipsize:I

    if-ne v0, v7, :cond_2

    .line 247
    const/4 v6, 0x0

    .line 248
    .local v6, "truncate":Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 262
    :goto_2
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 250
    :pswitch_0
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 251
    goto :goto_2

    .line 253
    :pswitch_1
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 254
    goto :goto_2

    .line 256
    :pswitch_2
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 257
    goto :goto_2

    .line 259
    :pswitch_3
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 264
    .end local v6    # "truncate":Landroid/text/TextUtils$TruncateAt;
    :cond_2
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_gravity:I

    if-ne v0, v7, :cond_3

    .line 265
    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 267
    :cond_3
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_lines:I

    if-ne v0, v7, :cond_4

    .line 268
    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_1

    .line 270
    :cond_4
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_scrollHorizontally:I

    if-ne v0, v7, :cond_5

    .line 271
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto :goto_1

    .line 273
    :cond_5
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_singleLine:I

    if-ne v0, v7, :cond_7

    .line 274
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 275
    .local v5, "singleLine":Z
    if-eqz v5, :cond_6

    .line 276
    const/4 v3, 0x1

    .line 277
    :cond_6
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    .line 279
    .end local v5    # "singleLine":Z
    :cond_7
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_drawablePadding:I

    if-ne v0, v7, :cond_0

    .line 280
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    .line 286
    .end local v0    # "attr":I
    :cond_8
    if-eq v3, v8, :cond_9

    .line 287
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 289
    :cond_9
    return-void

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V
    .locals 12
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 310
    .local v5, "paddingLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 311
    .local v7, "paddingTop":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 312
    .local v6, "paddingRight":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 314
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 315
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_14

    .line 316
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 318
    .local v0, "attr":I
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_background:I

    if-ne v0, v8, :cond_1

    .line 319
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_1
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_padding:I

    if-ne v0, v8, :cond_2

    .line 322
    const/4 v8, -0x1

    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 323
    .local v3, "padding":I
    if-ltz v3, :cond_0

    .line 324
    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    goto :goto_1

    .line 326
    .end local v3    # "padding":I
    :cond_2
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_paddingLeft:I

    if-ne v0, v8, :cond_3

    .line 327
    invoke-virtual {p0, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1

    .line 329
    :cond_3
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_paddingTop:I

    if-ne v0, v8, :cond_4

    .line 330
    invoke-virtual {p0, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    goto :goto_1

    .line 332
    :cond_4
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_paddingRight:I

    if-ne v0, v8, :cond_5

    .line 333
    invoke-virtual {p0, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto :goto_1

    .line 335
    :cond_5
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_paddingBottom:I

    if-ne v0, v8, :cond_6

    .line 336
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_1

    .line 338
    :cond_6
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_clickable:I

    if-ne v0, v8, :cond_7

    .line 339
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 341
    :cond_7
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_longClickable:I

    if-ne v0, v8, :cond_8

    .line 342
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_1

    .line 344
    :cond_8
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_minWidth:I

    if-ne v0, v8, :cond_9

    .line 345
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1

    .line 347
    :cond_9
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_minHeight:I

    if-ne v0, v8, :cond_a

    .line 348
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 350
    :cond_a
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_alpha:I

    if-ne v0, v8, :cond_b

    .line 351
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 353
    :cond_b
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_transformPivotX:I

    if-ne v0, v8, :cond_c

    .line 354
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    .line 356
    :cond_c
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_transformPivotY:I

    if-ne v0, v8, :cond_d

    .line 357
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    .line 359
    :cond_d
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_translationX:I

    if-ne v0, v8, :cond_e

    .line 360
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    .line 362
    :cond_e
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_translationY:I

    if-ne v0, v8, :cond_f

    .line 363
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    .line 365
    :cond_f
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_scaleX:I

    if-ne v0, v8, :cond_10

    .line 366
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_1

    .line 368
    :cond_10
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_scaleY:I

    if-ne v0, v8, :cond_11

    .line 369
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    .line 371
    :cond_11
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_rotation:I

    if-ne v0, v8, :cond_12

    .line 372
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1

    .line 374
    :cond_12
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_rotationX:I

    if-ne v0, v8, :cond_13

    .line 375
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_1

    .line 377
    :cond_13
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_rotationY:I

    if-ne v0, v8, :cond_0

    .line 378
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    .line 384
    .end local v0    # "attr":I
    :cond_14
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 386
    return-void
.end method
