.class public Lcom/android/launcher2/ShadowStyleable;
.super Ljava/lang/Object;
.source "ShadowStyleable.java"


# static fields
.field public static FrameLayout_Layout:[I

.field public static FrameLayout_Layout_layout_gravity:I

.field public static LinearLayout:[I

.field public static LinearLayout_Layout:[I

.field public static LinearLayout_Layout_layout_gravity:I

.field public static LinearLayout_Layout_layout_height:I

.field public static LinearLayout_Layout_layout_weight:I

.field public static LinearLayout_Layout_layout_width:I

.field public static LinearLayout_baselineAligned:I

.field public static LinearLayout_baselineAlignedChildIndex:I

.field public static LinearLayout_divider:I

.field public static LinearLayout_dividerPadding:I

.field public static LinearLayout_gravity:I

.field public static LinearLayout_measureWithLargestChild:I

.field public static LinearLayout_orientation:I

.field public static LinearLayout_showDividers:I

.field public static TextView:[I

.field public static TextView_drawablePadding:I

.field public static TextView_ellipsize:I

.field public static TextView_gravity:I

.field public static TextView_lines:I

.field public static TextView_scrollHorizontally:I

.field public static TextView_singleLine:I

.field public static TextView_textSize:I

.field public static View:[I

.field public static ViewGroup_Layout:[I

.field public static ViewGroup_Layout_layout_height:I

.field public static ViewGroup_Layout_layout_width:I

.field public static ViewGroup_MarginLayout:[I

.field public static ViewGroup_MarginLayout_layout_height:I

.field public static ViewGroup_MarginLayout_layout_margin:I

.field public static ViewGroup_MarginLayout_layout_marginBottom:I

.field public static ViewGroup_MarginLayout_layout_marginLeft:I

.field public static ViewGroup_MarginLayout_layout_marginRight:I

.field public static ViewGroup_MarginLayout_layout_marginTop:I

.field public static ViewGroup_MarginLayout_layout_width:I

.field public static View_alpha:I

.field public static View_background:I

.field public static View_clickable:I

.field public static View_longClickable:I

.field public static View_minHeight:I

.field public static View_minWidth:I

.field public static View_padding:I

.field public static View_paddingBottom:I

.field public static View_paddingLeft:I

.field public static View_paddingRight:I

.field public static View_paddingTop:I

.field public static View_rotation:I

.field public static View_rotationX:I

.field public static View_rotationY:I

.field public static View_scaleX:I

.field public static View_scaleY:I

.field public static View_transformPivotX:I

.field public static View_transformPivotY:I

.field public static View_translationX:I

.field public static View_translationY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 5

    .prologue
    .line 77
    const-string v3, "android.R$styleable"

    invoke-static {v3}, Lcom/android/launcher2/Reflection;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 78
    .local v2, "styleable":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 82
    .local v1, "f":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v3, "View"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->View:[I

    .line 85
    const-string v3, "View_alpha"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_alpha:I

    .line 88
    const-string v3, "View_background"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_background:I

    .line 91
    const-string v3, "View_clickable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_clickable:I

    .line 94
    const-string v3, "View_longClickable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_longClickable:I

    .line 97
    const-string v3, "View_minHeight"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_minHeight:I

    .line 100
    const-string v3, "View_minWidth"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_minWidth:I

    .line 103
    const-string v3, "View_padding"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_padding:I

    .line 106
    const-string v3, "View_paddingBottom"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_paddingBottom:I

    .line 109
    const-string v3, "View_paddingLeft"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_paddingLeft:I

    .line 112
    const-string v3, "View_paddingRight"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_paddingRight:I

    .line 115
    const-string v3, "View_paddingTop"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_paddingTop:I

    .line 118
    const-string v3, "View_rotation"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_rotation:I

    .line 121
    const-string v3, "View_rotationX"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_rotationX:I

    .line 124
    const-string v3, "View_rotationY"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_rotationY:I

    .line 127
    const-string v3, "View_scaleX"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_scaleX:I

    .line 130
    const-string v3, "View_scaleY"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_scaleY:I

    .line 133
    const-string v3, "View_transformPivotX"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_transformPivotX:I

    .line 136
    const-string v3, "View_transformPivotY"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_transformPivotY:I

    .line 139
    const-string v3, "View_translationX"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_translationX:I

    .line 142
    const-string v3, "View_translationY"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_translationY:I

    .line 147
    const-string v3, "TextView"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 148
    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    .line 150
    const-string v3, "TextView_drawablePadding"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_drawablePadding:I

    .line 153
    const-string v3, "TextView_ellipsize"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_ellipsize:I

    .line 156
    const-string v3, "TextView_gravity"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_gravity:I

    .line 159
    const-string v3, "TextView_lines"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_lines:I

    .line 162
    const-string v3, "TextView_scrollHorizontally"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_scrollHorizontally:I

    .line 165
    const-string v3, "TextView_singleLine"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_singleLine:I

    .line 168
    const-string v3, "TextView_textSize"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_textSize:I

    .line 172
    const-string v3, "FrameLayout_Layout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 173
    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->FrameLayout_Layout:[I

    .line 175
    const-string v3, "TextView_drawablePadding"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_drawablePadding:I

    .line 180
    const-string v3, "LinearLayout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 181
    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout:[I

    .line 183
    const-string v3, "LinearLayout_baselineAligned"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_baselineAligned:I

    .line 186
    const-string v3, "LinearLayout_baselineAlignedChildIndex"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_baselineAlignedChildIndex:I

    .line 189
    const-string v3, "LinearLayout_divider"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_divider:I

    .line 192
    const-string v3, "LinearLayout_dividerPadding"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_dividerPadding:I

    .line 195
    const-string v3, "LinearLayout_gravity"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_gravity:I

    .line 198
    const-string v3, "LinearLayout_measureWithLargestChild"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_measureWithLargestChild:I

    .line 201
    const-string v3, "LinearLayout_orientation"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_orientation:I

    .line 204
    const-string v3, "LinearLayout_showDividers"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_showDividers:I

    .line 209
    const-string v3, "LinearLayout_Layout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 210
    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout:[I

    .line 212
    const-string v3, "LinearLayout_Layout_layout_gravity"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_gravity:I

    .line 215
    const-string v3, "LinearLayout_Layout_layout_height"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_height:I

    .line 218
    const-string v3, "LinearLayout_Layout_layout_weight"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_weight:I

    .line 221
    const-string v3, "LinearLayout_Layout_layout_width"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_width:I

    .line 226
    const-string v3, "ViewGroup_Layout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 227
    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_Layout:[I

    .line 229
    const-string v3, "ViewGroup_Layout_layout_height"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_Layout_layout_height:I

    .line 232
    const-string v3, "ViewGroup_Layout_layout_width"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_Layout_layout_width:I

    .line 236
    const-string v3, "ViewGroup_MarginLayout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 237
    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout:[I

    .line 239
    const-string v3, "ViewGroup_MarginLayout_layout_height"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_height:I

    .line 242
    const-string v3, "ViewGroup_MarginLayout_layout_margin"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_margin:I

    .line 245
    const-string v3, "ViewGroup_MarginLayout_layout_marginBottom"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginBottom:I

    .line 248
    const-string v3, "ViewGroup_MarginLayout_layout_marginLeft"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginLeft:I

    .line 251
    const-string v3, "ViewGroup_MarginLayout_layout_marginRight"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginRight:I

    .line 254
    const-string v3, "ViewGroup_MarginLayout_layout_marginTop"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginTop:I

    .line 257
    const-string v3, "ViewGroup_MarginLayout_layout_width"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_width:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
