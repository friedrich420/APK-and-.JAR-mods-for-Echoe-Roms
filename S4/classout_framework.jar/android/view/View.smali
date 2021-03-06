.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$MoreInfoHPW;,
        Landroid/view/View$SendViewStateChangedAccessibilityEvent;,
        Landroid/view/View$MatchLabelForPredicate;,
        Landroid/view/View$MatchIdPredicate;,
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnApplyWindowInsetsListener;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$ClipRect;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$TintInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_CURSOR_POSITION_UNDEFINED:I = -0x1

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field static final ACCESSIBILITY_LIVE_REGION_DEFAULT:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field static final ALL_RTL_PROPERTIES_RESOLVED:I = 0x60010220

.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field public static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field static final DISABLED:I = 0x20

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAG_MASK:I = 0x3

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_STATE_SET:[I

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS:I = 0x4

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field static final FINGER_HOVERED:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field protected static final FOCUSED_SELECTED_STATE_SET:[I

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field private static final HOVERING_UI_DISABLED:I = 0x2

.field private static final HOVERING_UI_ENABLED:I = 0x1

.field private static final HOVERING_UI_MASK:I = 0xf

.field private static final HOVERING_UI_NOT_DECIDED:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field static final IMPORTANT_FOR_ACCESSIBILITY_DEFAULT:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final INVISIBLE:I = 0x4

.field private static final IS_DEVICE_H:Z

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = 0x2

.field private static final LAYOUT_DIRECTION_FLAGS:[I

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field static final LAYOUT_DIRECTION_RESOLVED_DEFAULT:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field static final LONG_CLICKABLE:I = 0x200000

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final NAVIGATION_BAR_TRANSIENT:I = 0x8000000

.field public static final NAVIGATION_BAR_TRANSLUCENT:I = -0x80000000

.field public static final NAVIGATION_BAR_UNHIDE:I = 0x20000000

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final OPTIONAL_FITS_SYSTEM_WINDOWS:I = 0x800

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field static final PFLAG2_ACCESSIBILITY_FOCUSED:I = 0x4000000

.field static final PFLAG2_ACCESSIBILITY_LIVE_REGION_MASK:I = 0x1800000

.field static final PFLAG2_ACCESSIBILITY_LIVE_REGION_SHIFT:I = 0x17

.field static final PFLAG2_DRAG_CAN_ACCEPT:I = 0x1

.field static final PFLAG2_DRAG_HOVERED:I = 0x2

.field static final PFLAG2_DRAWABLE_RESOLVED:I = 0x40000000

.field static final PFLAG2_HAS_TRANSIENT_STATE:I = -0x80000000

.field static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK:I = 0x700000

.field static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_SHIFT:I = 0x14

.field static final PFLAG2_LAYOUT_DIRECTION_MASK:I = 0xc

.field static final PFLAG2_LAYOUT_DIRECTION_MASK_SHIFT:I = 0x2

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED:I = 0x20

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_MASK:I = 0x30

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x10

.field static final PFLAG2_PADDING_RESOLVED:I = 0x20000000

.field static final PFLAG2_SUBTREE_ACCESSIBILITY_STATE_CHANGED:I = 0x8000000

.field private static final PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

.field static final PFLAG2_TEXT_ALIGNMENT_MASK:I = 0xe000

.field static final PFLAG2_TEXT_ALIGNMENT_MASK_SHIFT:I = 0xd

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED:I = 0x10000

.field private static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x20000

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK:I = 0xe0000

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT:I = 0x11

.field private static final PFLAG2_TEXT_DIRECTION_FLAGS:[I

.field static final PFLAG2_TEXT_DIRECTION_MASK:I = 0x1c0

.field static final PFLAG2_TEXT_DIRECTION_MASK_SHIFT:I = 0x6

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED:I = 0x200

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x400

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK:I = 0x1c00

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK_SHIFT:I = 0xa

.field static final PFLAG2_VIEW_QUICK_REJECTED:I = 0x10000000

.field static final PFLAG3_APPLYING_INSETS:I = 0x20

.field static final PFLAG3_CALLED_SUPER:I = 0x10

.field static final PFLAG3_FITTING_SYSTEM_WINDOWS:I = 0x40

.field static final PFLAG3_IS_LAID_OUT:I = 0x4

.field static final PFLAG3_MEASURE_NEEDED_BEFORE_LAYOUT:I = 0x8

.field static final PFLAG3_NESTED_SCROLLING_ENABLED:I = 0x80

.field static final PFLAG3_OUTLINE_INVALID:I = 0x100

.field static final PFLAG3_VIEW_IS_ANIMATING_ALPHA:I = 0x2

.field static final PFLAG3_VIEW_IS_ANIMATING_TRANSFORM:I = 0x1

.field static final PFLAG_ACTIVATED:I = 0x40000000

.field static final PFLAG_ALPHA_SET:I = 0x40000

.field static final PFLAG_ANIMATION_STARTED:I = 0x10000

.field private static final PFLAG_AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final PFLAG_CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final PFLAG_DIRTY:I = 0x200000

.field static final PFLAG_DIRTY_MASK:I = 0x600000

.field static final PFLAG_DIRTY_OPAQUE:I = 0x400000

.field private static final PFLAG_DOES_NOTHING_REUSE_PLEASE:I = 0x20000000

.field static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field static final PFLAG_DRAWING_CACHE_VALID:I = 0x8000

.field static final PFLAG_DRAWN:I = 0x20

.field static final PFLAG_DRAW_ANIMATION:I = 0x40

.field static final PFLAG_FOCUSED:I = 0x2

.field static final PFLAG_FORCE_LAYOUT:I = 0x1000

.field static final PFLAG_HAS_BOUNDS:I = 0x10

.field private static final PFLAG_HOVERED:I = 0x10000000

.field static final PFLAG_INVALIDATED:I = -0x80000000

.field static final PFLAG_IS_ROOT_NAMESPACE:I = 0x8

.field static final PFLAG_LAYOUT_REQUIRED:I = 0x2000

.field static final PFLAG_MEASURED_DIMENSION_SET:I = 0x800

.field static final PFLAG_ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final PFLAG_OPAQUE_BACKGROUND:I = 0x800000

.field static final PFLAG_OPAQUE_MASK:I = 0x1800000

.field static final PFLAG_OPAQUE_SCROLLBARS:I = 0x1000000

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field static final PFLAG_REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field private static final PFLAG_SAVE_STATE_CALLED:I = 0x20000

.field static final PFLAG_SCROLL_CONTAINER:I = 0x80000

.field static final PFLAG_SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final PFLAG_SELECTED:I = 0x4

.field static final PFLAG_SKIP_DRAW:I = 0x80

.field static final PFLAG_WANTS_FOCUS:I = 0x1

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x2a1bf

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_STATE_SET:[I

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PRODUCT_NAME:Ljava/lang/String;

.field private static final PROVIDER_BACKGROUND:I = 0x0

.field private static final PROVIDER_BOUNDS:I = 0x2

.field private static final PROVIDER_NONE:I = 0x1

.field private static final PROVIDER_PADDED_BOUNDS:I = 0x3

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0x3fff

.field public static final RECENT_APPS_VISIBLE:I = 0x4000

.field public static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field public static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON:I = 0x1

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field protected static final SELECTED_STATE_SET:[I

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SMARTCLIP_EXTRACTION_FAILED:I = 0x0

.field public static final SMARTCLIP_EXTRACTION_PENDING:I = 0x2

.field public static final SMARTCLIP_EXTRACTION_SKIP_CHILD_EXTRACTION:I = 0x100

.field public static final SMARTCLIP_EXTRACTION_SUCCESS:I = 0x1

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SEARCH:I = 0x2000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_TRANSIENT:I = 0x4000000

.field public static final STATUS_BAR_TRANSLUCENT:I = 0x40000000

.field public static final STATUS_BAR_UNHIDE:I = 0x10000000

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x7

.field public static final SYSTEM_UI_FLAG_FULLSCREEN:I = 0x4

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_IMMERSIVE:I = 0x800

.field public static final SYSTEM_UI_FLAG_IMMERSIVE_STICKY:I = 0x1000

.field public static final SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN:I = 0x400

.field public static final SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION:I = 0x200

.field public static final SYSTEM_UI_FLAG_LAYOUT_STABLE:I = 0x100

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_LAYOUT_FLAGS:I = 0x600

.field public static final SYSTEM_UI_TRANSPARENT:I = 0x8000

.field private static final TEXTSELECTION_DISABLED:I = 0x20

.field private static final TEXTSELECTION_ENABLED:I = 0x10

.field private static final TEXTSELECTION_MASK:I = 0xf0

.field private static final TEXTSELECTION_NOT_DECIDED:I = 0x0

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x4

.field private static final TEXT_ALIGNMENT_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_GRAVITY:I = 0x1

.field public static final TEXT_ALIGNMENT_INHERIT:I = 0x0

.field static final TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_TEXT_END:I = 0x3

.field public static final TEXT_ALIGNMENT_TEXT_START:I = 0x2

.field public static final TEXT_ALIGNMENT_VIEW_END:I = 0x6

.field public static final TEXT_ALIGNMENT_VIEW_START:I = 0x5

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field private static final TEXT_DIRECTION_DEFAULT:I = 0x0

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LOCALE:I = 0x5

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field static final TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static final TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Z:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDEFINED_PADDING:I = -0x80000000

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FINGER_HOVERED:I = 0x400

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field private static final WRITINGBUDDY_FEATURE_DISABLED:I = 0x200

.field private static final WRITINGBUDDY_FEATURE_ENABLED:I = 0x100

.field private static final WRITINGBUDDY_FEATURE_MASK:I = 0xf00

.field private static final WRITINGBUDDY_FEATURE_NOT_CHECKED:I

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Z:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mAttributeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mDebugViewAttributes:Z

.field protected static mHoverUIFeatureLevel:I

.field protected static misHoverUIFeatureLevelChecked:Z

.field private static sCompatibilityDone:Z

.field private static sHoverUIEnableFlag:I

.field private static sIgnoreMeasureCache:Z

.field private static sIsEasyClipOnSpenLevel3Enabled:Z

.field private static sNextAccessibilityViewId:I

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static sSpenUspLevel:I

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseBrokenMakeMeasureSpec:Z


# instance fields
.field private final DEBUG_ELASTIC:Z

.field private final isElasticEnabled:Z

.field isPenSideButton:Z

.field private mAccessibilityCursorPosition:I

.field mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mAccessibilityViewId:I

.field private mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field public mAttributes:[Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "attributes"
        hasAdjacentMapping = true
    .end annotation
.end field

.field private mBackground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "bg_"
    .end annotation
.end field

.field private mBackgroundPath:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "paths"
    .end annotation
.end field

.field private mBackgroundRenderNode:Landroid/view/RenderNode;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field private mBackgroundTint:Landroid/view/View$TintInfo;

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field mClipBounds:Landroid/graphics/Rect;

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
    .end annotation
.end field

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDisablePenGestureforfactorytest:Z

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mEnablePenGesture:Z

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field mGhostView:Landroid/view/GhostView;

.field private mHasPerformedLongPress:Z

.field protected mHoverPopup:Landroid/widget/HoverPopupWindow;

.field protected mHoverPopupToolTypeByApp:I

.field protected mHoverPopupType:I

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field protected mIsDetachedFromWindow:Z

.field private mIsInDialog:Z

.field mIsSetContextMenuZOrderToTop:Z

.field private mIsSetFingerHovedInAppWidget:Z

.field protected mIsWritingBuddyEnabled:Z

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelForId:I

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field private mLayoutInsets:Landroid/graphics/Insets;

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mLeftPaddingDefined:Z

.field mListenerInfo:Landroid/view/View$ListenerInfo;

.field private mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

.field private mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

.field private mMeasureCache:Landroid/util/LongSparseLongArray;

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNeededToChangedScrollBarPosition:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mOverScrollMode:I

.field mOverlay:Landroid/view/ViewOverlay;

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field mPrivateFlags2:I

.field mPrivateFlags3:I

.field mRecreateDisplayList:Z

.field final mRenderNode:Landroid/view/RenderNode;

.field mRenderNodeImageFilter:Landroid/graphics/ImageFilter;

.field mRenderNodeImageFilterClipRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$ClipRect;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mRightPaddingDefined:Z

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private mScrollBarPositionPadding:I

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field protected mSkipRtlCheck:Z

.field protected mSmartClipDataExtractionListener:Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

.field protected mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field private mStateListAnimator:Landroid/animation/StateListAnimator;

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x3fff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field private mTempNestedScrollConsumed:[I

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTouchwizFlags:I

.field mTransformationInfo:Landroid/view/View$TransformationInfo;

.field mTransientStateCount:I

.field private mTransitionName:Ljava/lang/String;

.field public mTwExtraPaddingBottomForPreference:I

.field private mTwHorizontalScrollbarPosition:I

.field public final mTwHorizontalScrollbarRect:Landroid/graphics/Rect;

.field public mTwScrollingByScrollbar:Z

.field public mTwScrollingVertical:Z

.field public final mTwVerticalScrollbarRect:Landroid/graphics/Rect;

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field protected mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingLeftInitial:I

.field protected mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRightInitial:I

.field mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        formatToHexString = true
    .end annotation
.end field

.field mWindowAttachCount:I

.field private mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

.field private mXmlFilePath:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "paths"
    .end annotation
.end field

.field private mYouTubePacakge:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 776
    const/4 v9, 0x0

    sput-boolean v9, mDebugViewAttributes:Z

    .line 787
    const/4 v9, 0x0

    sput-boolean v9, sCompatibilityDone:Z

    .line 792
    const/4 v9, 0x0

    sput-boolean v9, sUseBrokenMakeMeasureSpec:Z

    .line 797
    const/4 v9, 0x0

    sput-boolean v9, sIgnoreMeasureCache:Z

    .line 853
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_270

    sput-object v9, VISIBILITY_FLAGS:[I

    .line 1013
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_27a

    sput-object v9, DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 1521
    const/16 v9, 0x16

    new-array v9, v9, [I

    fill-array-data v9, :array_284

    sput-object v9, VIEW_STATE_IDS:[I

    .line 1536
    sget-object v9, VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_37

    .line 1537
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1540
    :cond_37
    sget-object v9, VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 1541
    .local v4, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_68

    .line 1542
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 1543
    .local v8, "viewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_47
    sget-object v9, VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_65

    .line 1544
    sget-object v9, VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_62

    .line 1545
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 1546
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 1543
    :cond_62
    add-int/lit8 v2, v2, 0x2

    goto :goto_47

    .line 1541
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1550
    .end local v2    # "j":I
    .end local v8    # "viewState":I
    :cond_68
    sget-object v9, VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 1551
    .local v0, "NUM_BITS":I
    const/4 v9, 0x1

    shl-int/2addr v9, v0

    new-array v9, v9, [[I

    sput-object v9, VIEW_STATE_SETS:[[I

    .line 1552
    const/4 v1, 0x0

    :goto_74
    sget-object v9, VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_9c

    .line 1553
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 1554
    .local v3, "numBits":I
    new-array v7, v3, [I

    .line 1555
    .local v7, "set":[I
    const/4 v5, 0x0

    .line 1556
    .local v5, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_81
    array-length v9, v4

    if-ge v2, v9, :cond_95

    .line 1557
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_92

    .line 1558
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 1556
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_92
    add-int/lit8 v2, v2, 0x2

    goto :goto_81

    .line 1561
    :cond_95
    sget-object v9, VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 1552
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 1564
    .end local v2    # "j":I
    .end local v3    # "numBits":I
    .end local v5    # "pos":I
    .end local v7    # "set":[I
    :cond_9c
    sget-object v9, VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, EMPTY_STATE_SET:[I

    .line 1565
    sget-object v9, VIEW_STATE_SETS:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sput-object v9, WINDOW_FOCUSED_STATE_SET:[I

    .line 1566
    sget-object v9, VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, SELECTED_STATE_SET:[I

    .line 1567
    sget-object v9, VIEW_STATE_SETS:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    sput-object v9, SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1569
    sget-object v9, VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, FOCUSED_STATE_SET:[I

    .line 1570
    sget-object v9, VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1572
    sget-object v9, VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, FOCUSED_SELECTED_STATE_SET:[I

    .line 1574
    sget-object v9, VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1577
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, ENABLED_STATE_SET:[I

    .line 1578
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1580
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0xa

    aget-object v9, v9, v10

    sput-object v9, ENABLED_SELECTED_STATE_SET:[I

    .line 1582
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1585
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, ENABLED_FOCUSED_STATE_SET:[I

    .line 1587
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1590
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sput-object v9, ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1593
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1597
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, PRESSED_STATE_SET:[I

    .line 1598
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1600
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, PRESSED_SELECTED_STATE_SET:[I

    .line 1602
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1605
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x14

    aget-object v9, v9, v10

    sput-object v9, PRESSED_FOCUSED_STATE_SET:[I

    .line 1607
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1610
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1613
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1616
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, PRESSED_ENABLED_STATE_SET:[I

    .line 1618
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1621
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1624
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1627
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1630
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1633
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1636
    sget-object v9, VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1663
    new-instance v9, Ljava/lang/ThreadLocal;

    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v9, sThreadLocal:Ljava/lang/ThreadLocal;

    .line 2026
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_2b4

    sput-object v9, LAYOUT_DIRECTION_FLAGS:[I

    .line 2107
    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_2c0

    sput-object v9, PFLAG2_TEXT_DIRECTION_FLAGS:[I

    .line 2235
    const/4 v9, 0x7

    new-array v9, v9, [I

    fill-array-data v9, :array_2d0

    sput-object v9, PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    .line 3712
    const/4 v9, -0x1

    sput v9, sSpenUspLevel:I

    .line 3713
    const/4 v9, 0x0

    sput-boolean v9, sIsEasyClipOnSpenLevel3Enabled:Z

    .line 3742
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v9, sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3768
    const-string/jumbo v9, "ro.product.name"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, PRODUCT_NAME:Ljava/lang/String;

    .line 3769
    sget-object v9, PRODUCT_NAME:Ljava/lang/String;

    const-string v10, "hlte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1e8

    sget-object v9, PRODUCT_NAME:Ljava/lang/String;

    const-string v10, "ha3g"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1e8

    sget-object v9, PRODUCT_NAME:Ljava/lang/String;

    const-string v10, "h3g"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26c

    :cond_1e8
    const/4 v9, 0x1

    :goto_1e9
    sput-boolean v9, IS_DEVICE_H:Z

    .line 20562
    new-instance v9, Landroid/view/View$3;

    const-string v10, "alpha"

    invoke-direct {v9, v10}, Landroid/view/View$3;-><init>(Ljava/lang/String;)V

    sput-object v9, ALPHA:Landroid/util/Property;

    .line 20578
    new-instance v9, Landroid/view/View$4;

    const-string/jumbo v10, "translationX"

    invoke-direct {v9, v10}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v9, TRANSLATION_X:Landroid/util/Property;

    .line 20594
    new-instance v9, Landroid/view/View$5;

    const-string/jumbo v10, "translationY"

    invoke-direct {v9, v10}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v9, TRANSLATION_Y:Landroid/util/Property;

    .line 20610
    new-instance v9, Landroid/view/View$6;

    const-string/jumbo v10, "translationZ"

    invoke-direct {v9, v10}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v9, TRANSLATION_Z:Landroid/util/Property;

    .line 20626
    new-instance v9, Landroid/view/View$7;

    const-string/jumbo v10, "x"

    invoke-direct {v9, v10}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v9, X:Landroid/util/Property;

    .line 20642
    new-instance v9, Landroid/view/View$8;

    const-string/jumbo v10, "y"

    invoke-direct {v9, v10}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v9, Y:Landroid/util/Property;

    .line 20658
    new-instance v9, Landroid/view/View$9;

    const-string/jumbo v10, "z"

    invoke-direct {v9, v10}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v9, Z:Landroid/util/Property;

    .line 20674
    new-instance v9, Landroid/view/View$10;

    const-string/jumbo v10, "rotation"

    invoke-direct {v9, v10}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v9, ROTATION:Landroid/util/Property;

    .line 20690
    new-instance v9, Landroid/view/View$11;

    const-string/jumbo v10, "rotationX"

    invoke-direct {v9, v10}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v9, ROTATION_X:Landroid/util/Property;

    .line 20706
    new-instance v9, Landroid/view/View$12;

    const-string/jumbo v10, "rotationY"

    invoke-direct {v9, v10}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v9, ROTATION_Y:Landroid/util/Property;

    .line 20722
    new-instance v9, Landroid/view/View$13;

    const-string/jumbo v10, "scaleX"

    invoke-direct {v9, v10}, Landroid/view/View$13;-><init>(Ljava/lang/String;)V

    sput-object v9, SCALE_X:Landroid/util/Property;

    .line 20738
    new-instance v9, Landroid/view/View$14;

    const-string/jumbo v10, "scaleY"

    invoke-direct {v9, v10}, Landroid/view/View$14;-><init>(Ljava/lang/String;)V

    sput-object v9, SCALE_Y:Landroid/util/Property;

    .line 22378
    const/4 v9, 0x0

    sput v9, sHoverUIEnableFlag:I

    .line 22380
    const/4 v9, 0x0

    sput-boolean v9, misHoverUIFeatureLevelChecked:Z

    .line 22381
    const/4 v9, 0x0

    sput v9, mHoverUIFeatureLevel:I

    return-void

    .line 3769
    :cond_26c
    const/4 v9, 0x0

    goto/16 :goto_1e9

    .line 853
    nop

    :array_270
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data

    .line 1013
    :array_27a
    .array-data 4
        0x0
        0x80000
        0x100000
    .end array-data

    .line 1521
    :array_284
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
        0x101055f
        0x400
    .end array-data

    .line 2026
    :array_2b4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 2107
    :array_2c0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0x100
        0x140
    .end array-data

    .line 2235
    :array_2d0
    .array-data 4
        0x0
        0x2000
        0x4000
        0x6000
        0x8000
        0xa000
        0xc000
    .end array-data
.end method

.method constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/high16 v0, -0x80000000

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-boolean v2, p0, DEBUG_ELASTIC:Z

    .line 757
    iput-boolean v2, p0, isElasticEnabled:Z

    .line 1679
    iput-object v1, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1704
    iput-boolean v2, p0, mRecreateDisplayList:Z

    .line 1713
    iput v3, p0, mID:I

    .line 1719
    iput v3, p0, mAccessibilityViewId:I

    .line 1721
    iput v3, p0, mAccessibilityCursorPosition:I

    .line 1732
    iput-object v1, p0, mTag:Ljava/lang/Object;

    .line 3027
    iput v2, p0, mTransientStateCount:I

    .line 3088
    iput-object v1, p0, mClipBounds:Landroid/graphics/Rect;

    .line 3141
    iput v2, p0, mPaddingLeft:I

    .line 3148
    iput v2, p0, mPaddingRight:I

    .line 3180
    iput v3, p0, mLabelForId:I

    .line 3253
    iput-boolean v2, p0, mLeftPaddingDefined:Z

    .line 3258
    iput-boolean v2, p0, mRightPaddingDefined:Z

    .line 3263
    iput v0, p0, mOldWidthMeasureSpec:I

    .line 3267
    iput v0, p0, mOldHeightMeasureSpec:I

    .line 3365
    iput-object v1, p0, mDrawableState:[I

    .line 3367
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    iput-object v0, p0, mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 3378
    iput v3, p0, mNextFocusLeftId:I

    .line 3384
    iput v3, p0, mNextFocusRightId:I

    .line 3390
    iput v3, p0, mNextFocusUpId:I

    .line 3396
    iput v3, p0, mNextFocusDownId:I

    .line 3402
    iput v3, p0, mNextFocusForwardId:I

    .line 3405
    iput-object v1, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3437
    iput-object v1, p0, mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3443
    iput v2, p0, mDrawingCacheBackgroundColor:I

    .line 3458
    iput-object v1, p0, mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3580
    iput v2, p0, mTwExtraPaddingBottomForPreference:I

    .line 3582
    iput v2, p0, mLayerType:I

    .line 3699
    iput-boolean v2, p0, mEnablePenGesture:Z

    .line 3700
    iput-boolean v2, p0, mDisablePenGestureforfactorytest:Z

    .line 3701
    iput-boolean v2, p0, isPenSideButton:Z

    .line 3705
    iput-boolean v2, p0, mYouTubePacakge:Z

    .line 3738
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_9d

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_5a
    iput-object v0, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 8853
    iput-boolean v2, p0, mTwScrollingByScrollbar:Z

    .line 8857
    iput-boolean v4, p0, mTwScrollingVertical:Z

    .line 8861
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTwVerticalScrollbarRect:Landroid/graphics/Rect;

    .line 8865
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTwHorizontalScrollbarRect:Landroid/graphics/Rect;

    .line 9699
    iput-object v1, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 9701
    iput-boolean v2, p0, mIsWritingBuddyEnabled:Z

    .line 10154
    iput-object v1, p0, mRootViewCheckForDialog:Landroid/view/View;

    .line 10155
    iput-boolean v2, p0, mIsInDialog:Z

    .line 10253
    iput-boolean v4, p0, mIsSetFingerHovedInAppWidget:Z

    .line 13885
    iput v2, p0, mScrollBarPositionPadding:I

    .line 13888
    iput-boolean v2, p0, mNeededToChangedScrollBarPosition:Z

    .line 17718
    iput-boolean v2, p0, mSkipRtlCheck:Z

    .line 22231
    iput-object v1, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 22232
    iput-object v1, p0, mSmartClipDataExtractionListener:Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    .line 22346
    iput-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 22348
    iput-boolean v2, p0, mIsDetachedFromWindow:Z

    .line 22350
    iput v2, p0, mHoverPopupType:I

    .line 22352
    iput v2, p0, mHoverPopupToolTypeByApp:I

    .line 22604
    iput-boolean v2, p0, mIsSetContextMenuZOrderToTop:Z

    .line 4438
    iput-object v1, p0, mResources:Landroid/content/res/Resources;

    .line 4439
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    .line 4440
    return-void

    :cond_9d
    move-object v0, v1

    .line 3738
    goto :goto_5a
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, -0x80000000

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-boolean v5, p0, DEBUG_ELASTIC:Z

    .line 757
    iput-boolean v5, p0, isElasticEnabled:Z

    .line 1679
    iput-object v3, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1704
    iput-boolean v5, p0, mRecreateDisplayList:Z

    .line 1713
    iput v6, p0, mID:I

    .line 1719
    iput v6, p0, mAccessibilityViewId:I

    .line 1721
    iput v6, p0, mAccessibilityCursorPosition:I

    .line 1732
    iput-object v3, p0, mTag:Ljava/lang/Object;

    .line 3027
    iput v5, p0, mTransientStateCount:I

    .line 3088
    iput-object v3, p0, mClipBounds:Landroid/graphics/Rect;

    .line 3141
    iput v5, p0, mPaddingLeft:I

    .line 3148
    iput v5, p0, mPaddingRight:I

    .line 3180
    iput v6, p0, mLabelForId:I

    .line 3253
    iput-boolean v5, p0, mLeftPaddingDefined:Z

    .line 3258
    iput-boolean v5, p0, mRightPaddingDefined:Z

    .line 3263
    iput v7, p0, mOldWidthMeasureSpec:I

    .line 3267
    iput v7, p0, mOldHeightMeasureSpec:I

    .line 3365
    iput-object v3, p0, mDrawableState:[I

    .line 3367
    sget-object v2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    iput-object v2, p0, mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 3378
    iput v6, p0, mNextFocusLeftId:I

    .line 3384
    iput v6, p0, mNextFocusRightId:I

    .line 3390
    iput v6, p0, mNextFocusUpId:I

    .line 3396
    iput v6, p0, mNextFocusDownId:I

    .line 3402
    iput v6, p0, mNextFocusForwardId:I

    .line 3405
    iput-object v3, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3437
    iput-object v3, p0, mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3443
    iput v5, p0, mDrawingCacheBackgroundColor:I

    .line 3458
    iput-object v3, p0, mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3580
    iput v5, p0, mTwExtraPaddingBottomForPreference:I

    .line 3582
    iput v5, p0, mLayerType:I

    .line 3699
    iput-boolean v5, p0, mEnablePenGesture:Z

    .line 3700
    iput-boolean v5, p0, mDisablePenGestureforfactorytest:Z

    .line 3701
    iput-boolean v5, p0, isPenSideButton:Z

    .line 3705
    iput-boolean v5, p0, mYouTubePacakge:Z

    .line 3738
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v2

    if-eqz v2, :cond_11c

    new-instance v2, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v2, p0, v5}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_5a
    iput-object v2, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 8853
    iput-boolean v5, p0, mTwScrollingByScrollbar:Z

    .line 8857
    iput-boolean v4, p0, mTwScrollingVertical:Z

    .line 8861
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mTwVerticalScrollbarRect:Landroid/graphics/Rect;

    .line 8865
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mTwHorizontalScrollbarRect:Landroid/graphics/Rect;

    .line 9699
    iput-object v3, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 9701
    iput-boolean v5, p0, mIsWritingBuddyEnabled:Z

    .line 10154
    iput-object v3, p0, mRootViewCheckForDialog:Landroid/view/View;

    .line 10155
    iput-boolean v5, p0, mIsInDialog:Z

    .line 10253
    iput-boolean v4, p0, mIsSetFingerHovedInAppWidget:Z

    .line 13885
    iput v5, p0, mScrollBarPositionPadding:I

    .line 13888
    iput-boolean v5, p0, mNeededToChangedScrollBarPosition:Z

    .line 17718
    iput-boolean v5, p0, mSkipRtlCheck:Z

    .line 22231
    iput-object v3, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 22232
    iput-object v3, p0, mSmartClipDataExtractionListener:Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    .line 22346
    iput-object v3, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 22348
    iput-boolean v5, p0, mIsDetachedFromWindow:Z

    .line 22350
    iput v5, p0, mHoverPopupType:I

    .line 22352
    iput v5, p0, mHoverPopupToolTypeByApp:I

    .line 22604
    iput-boolean v5, p0, mIsSetContextMenuZOrderToTop:Z

    .line 3780
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 3781
    if-eqz p1, :cond_94

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    :cond_94
    iput-object v3, p0, mResources:Landroid/content/res/Resources;

    .line 3782
    const/high16 v2, 0x18000000

    iput v2, p0, mViewFlags:I

    .line 3784
    const v2, 0x22408

    iput v2, p0, mPrivateFlags2:I

    .line 3791
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, mTouchSlop:I

    .line 3792
    invoke-virtual {p0, v4}, setOverScrollMode(I)V

    .line 3793
    iput v7, p0, mUserPaddingStart:I

    .line 3794
    iput v7, p0, mUserPaddingEnd:I

    .line 3795
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v2

    iput-object v2, p0, mRenderNode:Landroid/view/RenderNode;

    .line 3797
    sget-boolean v2, sCompatibilityDone:Z

    if-nez v2, :cond_da

    if-eqz p1, :cond_da

    .line 3798
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3801
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x11

    if-gt v1, v2, :cond_11f

    move v2, v4

    :goto_cf
    sput-boolean v2, sUseBrokenMakeMeasureSpec:Z

    .line 3805
    const/16 v2, 0x13

    if-ge v1, v2, :cond_121

    move v2, v4

    :goto_d6
    sput-boolean v2, sIgnoreMeasureCache:Z

    .line 3807
    sput-boolean v4, sCompatibilityDone:Z

    .line 3811
    .end local v1    # "targetSdkVersion":I
    :cond_da
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "disable_pen_gesture"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_123

    .line 3812
    iput-boolean v5, p0, mEnablePenGesture:Z

    .line 3813
    iput-boolean v4, p0, mDisablePenGestureforfactorytest:Z

    .line 3819
    :goto_ea
    sget v2, sSpenUspLevel:I

    if-ne v2, v6, :cond_104

    .line 3820
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3821
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_104

    .line 3822
    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    sput v2, sSpenUspLevel:I

    .line 3823
    const-string v2, "com.sec.feature.easyclip_on_spen_usp_level3"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, sIsEasyClipOnSpenLevel3Enabled:Z

    .line 3834
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_104
    const-string v2, "com.google.android.youtube"

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, mYouTubePacakge:Z

    .line 3837
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mRenderNodeImageFilterClipRects:Ljava/util/ArrayList;

    .line 3838
    return-void

    :cond_11c
    move-object v2, v3

    .line 3738
    goto/16 :goto_5a

    .restart local v1    # "targetSdkVersion":I
    :cond_11f
    move v2, v5

    .line 3801
    goto :goto_cf

    :cond_121
    move v2, v5

    .line 3805
    goto :goto_d6

    .line 3815
    .end local v1    # "targetSdkVersion":I
    :cond_123
    iput-boolean v5, p0, mDisablePenGestureforfactorytest:Z

    .line 3816
    iput-boolean v4, p0, mEnablePenGesture:Z

    goto :goto_ea
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3857
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3858
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 3878
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3879
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 59
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 3915
    invoke-direct/range {p0 .. p1}, <init>(Landroid/content/Context;)V

    .line 3917
    sget-object v51, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3920
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-boolean v51, mDebugViewAttributes:Z

    if-eqz v51, :cond_1e

    .line 3921
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, saveAttributeData(Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 3924
    :cond_1e
    const/4 v8, 0x0

    .line 3926
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    const/16 v21, -0x1

    .line 3927
    .local v21, "leftPadding":I
    const/16 v40, -0x1

    .line 3928
    .local v40, "topPadding":I
    const/16 v25, -0x1

    .line 3929
    .local v25, "rightPadding":I
    const/4 v9, -0x1

    .line 3930
    .local v9, "bottomPadding":I
    const/high16 v33, -0x80000000

    .line 3931
    .local v33, "startPadding":I
    const/high16 v12, -0x80000000

    .line 3933
    .local v12, "endPadding":I
    const/16 v24, -0x1

    .line 3935
    .local v24, "padding":I
    const/16 v47, 0x0

    .line 3936
    .local v47, "viewFlagValues":I
    const/16 v46, 0x0

    .line 3938
    .local v46, "viewFlagMasks":I
    const/16 v32, 0x0

    .line 3940
    .local v32, "setScrollContainer":Z
    const/16 v49, 0x0

    .line 3941
    .local v49, "x":I
    const/16 v50, 0x0

    .line 3943
    .local v50, "y":I
    const/16 v42, 0x0

    .line 3944
    .local v42, "tx":F
    const/16 v43, 0x0

    .line 3945
    .local v43, "ty":F
    const/16 v44, 0x0

    .line 3946
    .local v44, "tz":F
    const/4 v11, 0x0

    .line 3947
    .local v11, "elevation":F
    const/16 v27, 0x0

    .line 3948
    .local v27, "rotation":F
    const/16 v28, 0x0

    .line 3949
    .local v28, "rotationX":F
    const/16 v29, 0x0

    .line 3950
    .local v29, "rotationY":F
    const/high16 v35, 0x3f800000    # 1.0f

    .line 3951
    .local v35, "sx":F
    const/high16 v36, 0x3f800000    # 1.0f

    .line 3952
    .local v36, "sy":F
    const/16 v41, 0x0

    .line 3954
    .local v41, "transformSet":Z
    const/16 v30, 0x0

    .line 3955
    .local v30, "scrollbarStyle":I
    move-object/from16 v0, p0

    iget v0, v0, mOverScrollMode:I

    move/from16 v23, v0

    .line 3956
    .local v23, "overScrollMode":I
    const/16 v19, 0x0

    .line 3958
    .local v19, "initializeScrollbars":Z
    const/16 v34, 0x0

    .line 3959
    .local v34, "startPaddingDefined":Z
    const/4 v13, 0x0

    .line 3960
    .local v13, "endPaddingDefined":Z
    const/16 v22, 0x0

    .line 3961
    .local v22, "leftPaddingDefined":Z
    const/16 v26, 0x0

    .line 3963
    .local v26, "rightPaddingDefined":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v37, v0

    .line 3965
    .local v37, "targetSdkVersion":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 3966
    .local v5, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_6a
    move/from16 v0, v17

    if-ge v0, v5, :cond_5db

    .line 3967
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 3968
    .local v7, "attr":I
    packed-switch v7, :pswitch_data_728

    .line 3966
    :cond_77
    :goto_77
    :pswitch_77
    add-int/lit8 v17, v17, 0x1

    goto :goto_6a

    .line 3970
    :pswitch_7a
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3971
    sget-boolean v51, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v51, :cond_77

    if-eqz v8, :cond_77

    .line 3972
    const/16 v51, 0xd

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v18

    .line 3973
    .local v18, "image":Landroid/util/TypedValue;
    if-eqz v18, :cond_77

    .line 3974
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V

    goto :goto_77

    .line 3979
    .end local v18    # "image":Landroid/util/TypedValue;
    :pswitch_94
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v24

    .line 3980
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingLeftInitial:I

    .line 3981
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingRightInitial:I

    .line 3982
    const/16 v22, 0x1

    .line 3983
    const/16 v26, 0x1

    .line 3984
    goto :goto_77

    .line 3986
    :pswitch_ad
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 3987
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingLeftInitial:I

    .line 3988
    const/16 v22, 0x1

    .line 3989
    goto :goto_77

    .line 3991
    :pswitch_be
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v40

    .line 3992
    goto :goto_77

    .line 3994
    :pswitch_c7
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    .line 3995
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingRightInitial:I

    .line 3996
    const/16 v26, 0x1

    .line 3997
    goto :goto_77

    .line 3999
    :pswitch_d8
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 4000
    goto :goto_77

    .line 4002
    :pswitch_e1
    const/high16 v51, -0x80000000

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v33

    .line 4003
    const/high16 v51, -0x80000000

    move/from16 v0, v33

    move/from16 v1, v51

    if-eq v0, v1, :cond_f4

    const/16 v34, 0x1

    .line 4004
    :goto_f3
    goto :goto_77

    .line 4003
    :cond_f4
    const/16 v34, 0x0

    goto :goto_f3

    .line 4006
    :pswitch_f7
    const/high16 v51, -0x80000000

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 4007
    const/high16 v51, -0x80000000

    move/from16 v0, v51

    if-eq v12, v0, :cond_108

    const/4 v13, 0x1

    .line 4008
    :goto_106
    goto/16 :goto_77

    .line 4007
    :cond_108
    const/4 v13, 0x0

    goto :goto_106

    .line 4010
    :pswitch_10a
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v49

    .line 4011
    goto/16 :goto_77

    .line 4013
    :pswitch_114
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v50

    .line 4014
    goto/16 :goto_77

    .line 4016
    :pswitch_11e
    const/high16 v51, 0x3f800000    # 1.0f

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setAlpha(F)V

    goto/16 :goto_77

    .line 4019
    :pswitch_12f
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setPivotX(F)V

    goto/16 :goto_77

    .line 4022
    :pswitch_145
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setPivotY(F)V

    goto/16 :goto_77

    .line 4025
    :pswitch_15b
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v42, v0

    .line 4026
    const/16 v41, 0x1

    .line 4027
    goto/16 :goto_77

    .line 4029
    :pswitch_16c
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v43, v0

    .line 4030
    const/16 v41, 0x1

    .line 4031
    goto/16 :goto_77

    .line 4033
    :pswitch_17d
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v44, v0

    .line 4034
    const/16 v41, 0x1

    .line 4035
    goto/16 :goto_77

    .line 4037
    :pswitch_18e
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v11, v0

    .line 4038
    const/16 v41, 0x1

    .line 4039
    goto/16 :goto_77

    .line 4041
    :pswitch_19d
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 4042
    const/16 v41, 0x1

    .line 4043
    goto/16 :goto_77

    .line 4045
    :pswitch_1a9
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 4046
    const/16 v41, 0x1

    .line 4047
    goto/16 :goto_77

    .line 4049
    :pswitch_1b5
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 4050
    const/16 v41, 0x1

    .line 4051
    goto/16 :goto_77

    .line 4053
    :pswitch_1c1
    const/high16 v51, 0x3f800000    # 1.0f

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v35

    .line 4054
    const/16 v41, 0x1

    .line 4055
    goto/16 :goto_77

    .line 4057
    :pswitch_1cd
    const/high16 v51, 0x3f800000    # 1.0f

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v36

    .line 4058
    const/16 v41, 0x1

    .line 4059
    goto/16 :goto_77

    .line 4061
    :pswitch_1d9
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mID:I

    goto/16 :goto_77

    .line 4064
    :pswitch_1e9
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, mTag:Ljava/lang/Object;

    goto/16 :goto_77

    .line 4067
    :pswitch_1f5
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4068
    or-int/lit8 v47, v47, 0x2

    .line 4069
    or-int/lit8 v46, v46, 0x2

    goto/16 :goto_77

    .line 4073
    :pswitch_205
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4074
    or-int/lit8 v47, v47, 0x1

    .line 4075
    or-int/lit8 v46, v46, 0x1

    goto/16 :goto_77

    .line 4079
    :pswitch_215
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4080
    const v51, 0x40001

    or-int v47, v47, v51

    .line 4081
    const v51, 0x40001

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4085
    :pswitch_22b
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4086
    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x4000

    move/from16 v47, v0

    .line 4087
    move/from16 v0, v46

    or-int/lit16 v0, v0, 0x4000

    move/from16 v46, v0

    goto/16 :goto_77

    .line 4091
    :pswitch_243
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4092
    const/high16 v51, 0x200000

    or-int v47, v47, v51

    .line 4093
    const/high16 v51, 0x200000

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4097
    :pswitch_257
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_77

    .line 4098
    const/high16 v51, 0x10000

    or-int v47, v47, v51

    .line 4099
    const/high16 v51, 0x10000

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4103
    :pswitch_26b
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4104
    const/high16 v51, 0x400000

    or-int v47, v47, v51

    .line 4105
    const/high16 v51, 0x400000

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4109
    :pswitch_27f
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    .line 4110
    .local v48, "visibility":I
    if-eqz v48, :cond_77

    .line 4111
    sget-object v51, VISIBILITY_FLAGS:[I

    aget v51, v51, v48

    or-int v47, v47, v51

    .line 4112
    or-int/lit8 v46, v46, 0xc

    goto/16 :goto_77

    .line 4117
    .end local v48    # "visibility":I
    :pswitch_293
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags2:I

    move/from16 v51, v0

    and-int/lit8 v51, v51, -0x3d

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags2:I

    .line 4120
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 4121
    .local v20, "layoutDirection":I
    const/16 v51, -0x1

    move/from16 v0, v20

    move/from16 v1, v51

    if-eq v0, v1, :cond_2c7

    sget-object v51, LAYOUT_DIRECTION_FLAGS:[I

    aget v45, v51, v20

    .line 4123
    .local v45, "value":I
    :goto_2b5
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags2:I

    move/from16 v51, v0

    shl-int/lit8 v52, v45, 0x2

    or-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags2:I

    goto/16 :goto_77

    .line 4121
    .end local v45    # "value":I
    :cond_2c7
    const/16 v45, 0x2

    goto :goto_2b5

    .line 4126
    .end local v20    # "layoutDirection":I
    :pswitch_2ca
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 4127
    .local v10, "cacheQuality":I
    if-eqz v10, :cond_77

    .line 4128
    sget-object v51, DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v51, v51, v10

    or-int v47, v47, v51

    .line 4129
    const/high16 v51, 0x180000

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4133
    .end local v10    # "cacheQuality":I
    :pswitch_2e0
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_77

    .line 4136
    :pswitch_2ed
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setLabelFor(I)V

    goto/16 :goto_77

    .line 4139
    :pswitch_2fe
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_77

    .line 4140
    const v51, -0x8000001

    and-int v47, v47, v51

    .line 4141
    const/high16 v51, 0x8000000

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4145
    :pswitch_313
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_77

    .line 4146
    const v51, -0x10000001

    and-int v47, v47, v51

    .line 4147
    const/high16 v51, 0x10000000

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4151
    :pswitch_328
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v31

    .line 4152
    .local v31, "scrollbars":I
    if-eqz v31, :cond_77

    .line 4153
    or-int v47, v47, v31

    .line 4154
    move/from16 v0, v46

    or-int/lit16 v0, v0, 0x300

    move/from16 v46, v0

    .line 4155
    const/16 v19, 0x1

    goto/16 :goto_77

    .line 4160
    .end local v31    # "scrollbars":I
    :pswitch_33e
    const/16 v51, 0xe

    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_77

    .line 4166
    :pswitch_346
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 4167
    .local v14, "fadingEdge":I
    if-eqz v14, :cond_77

    .line 4168
    or-int v47, v47, v14

    .line 4169
    move/from16 v0, v46

    or-int/lit16 v0, v0, 0x3000

    move/from16 v46, v0

    .line 4170
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, initializeFadingEdgeInternal(Landroid/content/res/TypedArray;)V

    goto/16 :goto_77

    .line 4174
    .end local v14    # "fadingEdge":I
    :pswitch_35f
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 4175
    if-eqz v30, :cond_77

    .line 4176
    const/high16 v51, 0x3000000

    and-int v51, v51, v30

    or-int v47, v47, v51

    .line 4177
    const/high16 v51, 0x3000000

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4181
    :pswitch_375
    const/16 v32, 0x1

    .line 4182
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4183
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setScrollContainer(Z)V

    goto/16 :goto_77

    .line 4187
    :pswitch_38c
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4188
    const/high16 v51, 0x4000000

    or-int v47, v47, v51

    .line 4189
    const/high16 v51, 0x4000000

    or-int v46, v46, v51

    goto/16 :goto_77

    .line 4193
    :pswitch_3a0
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_77

    .line 4194
    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x400

    move/from16 v47, v0

    .line 4195
    move/from16 v0, v46

    or-int/lit16 v0, v0, 0x400

    move/from16 v46, v0

    goto/16 :goto_77

    .line 4199
    :pswitch_3b8
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mNextFocusLeftId:I

    goto/16 :goto_77

    .line 4202
    :pswitch_3c8
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mNextFocusRightId:I

    goto/16 :goto_77

    .line 4205
    :pswitch_3d8
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mNextFocusUpId:I

    goto/16 :goto_77

    .line 4208
    :pswitch_3e8
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mNextFocusDownId:I

    goto/16 :goto_77

    .line 4211
    :pswitch_3f8
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mNextFocusForwardId:I

    goto/16 :goto_77

    .line 4214
    :pswitch_408
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mMinWidth:I

    goto/16 :goto_77

    .line 4217
    :pswitch_418
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mMinHeight:I

    goto/16 :goto_77

    .line 4220
    :pswitch_428
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v51

    if-eqz v51, :cond_436

    .line 4221
    new-instance v51, Ljava/lang/IllegalStateException;

    const-string v52, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v51 .. v52}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 4225
    :cond_436
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4226
    .local v15, "handlerName":Ljava/lang/String;
    if-eqz v15, :cond_77

    .line 4227
    new-instance v51, Landroid/view/View$1;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_77

    .line 4261
    .end local v15    # "handlerName":Ljava/lang/String;
    :pswitch_44e
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 4262
    goto/16 :goto_77

    .line 4264
    :pswitch_458
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mVerticalScrollbarPosition:I

    goto/16 :goto_77

    .line 4267
    :pswitch_468
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    const/16 v52, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_77

    .line 4271
    :pswitch_47d
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags2:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, -0x1c1

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags2:I

    .line 4273
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v39

    .line 4274
    .local v39, "textDirection":I
    const/16 v51, -0x1

    move/from16 v0, v39

    move/from16 v1, v51

    if-eq v0, v1, :cond_77

    .line 4275
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags2:I

    move/from16 v51, v0

    sget-object v52, PFLAG2_TEXT_DIRECTION_FLAGS:[I

    aget v52, v52, v39

    or-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags2:I

    goto/16 :goto_77

    .line 4280
    .end local v39    # "textDirection":I
    :pswitch_4b3
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags2:I

    move/from16 v51, v0

    const v52, -0xe001

    and-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags2:I

    .line 4282
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    .line 4283
    .local v38, "textAlignment":I
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags2:I

    move/from16 v51, v0

    sget-object v52, PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    aget v52, v52, v38

    or-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags2:I

    goto/16 :goto_77

    .line 4286
    .end local v38    # "textAlignment":I
    :pswitch_4e0
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setImportantForAccessibility(I)V

    goto/16 :goto_77

    .line 4290
    :pswitch_4f1
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setAccessibilityLiveRegion(I)V

    goto/16 :goto_77

    .line 4293
    :pswitch_502
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, setTransitionName(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 4296
    :pswitch_50f
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setNestedScrollingEnabled(Z)V

    goto/16 :goto_77

    .line 4299
    :pswitch_520
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/16 :goto_77

    .line 4304
    :pswitch_539
    move-object/from16 v0, p0

    iget-object v0, v0, mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v51, v0

    if-nez v51, :cond_54e

    .line 4305
    new-instance v51, Landroid/view/View$TintInfo;

    const/16 v52, 0x0

    invoke-direct/range {v51 .. v52}, Landroid/view/View$TintInfo;-><init>(Landroid/view/View$1;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, mBackgroundTint:Landroid/view/View$TintInfo;

    .line 4307
    :cond_54e
    move-object/from16 v0, p0

    iget-object v0, v0, mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v51, v0

    const/16 v52, 0x4b

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 4309
    move-object/from16 v0, p0

    iget-object v0, v0, mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput-boolean v0, v1, Landroid/view/View$TintInfo;->mHasTintList:Z

    goto/16 :goto_77

    .line 4313
    :pswitch_572
    move-object/from16 v0, p0

    iget-object v0, v0, mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v51, v0

    if-nez v51, :cond_587

    .line 4314
    new-instance v51, Landroid/view/View$TintInfo;

    const/16 v52, 0x0

    invoke-direct/range {v51 .. v52}, Landroid/view/View$TintInfo;-><init>(Landroid/view/View$1;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, mBackgroundTint:Landroid/view/View$TintInfo;

    .line 4316
    :cond_587
    move-object/from16 v0, p0

    iget-object v0, v0, mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v51, v0

    const/16 v52, 0x4c

    const/16 v53, -0x1

    move/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    const/16 v53, 0x0

    invoke-static/range {v52 .. v53}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 4318
    move-object/from16 v0, p0

    iget-object v0, v0, mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput-boolean v0, v1, Landroid/view/View$TintInfo;->mHasTintMode:Z

    goto/16 :goto_77

    .line 4321
    :pswitch_5b5
    const/16 v51, 0x4d

    const/16 v52, 0x0

    move/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, setOutlineProviderFromAttribute(I)V

    goto/16 :goto_77

    .line 4326
    :pswitch_5ca
    const/16 v51, 0x0

    move/from16 v0, v51

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setHoverPopupType(I)V

    goto/16 :goto_77

    .line 4332
    .end local v7    # "attr":I
    :cond_5db
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, setOverScrollMode(I)V

    .line 4337
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingStart:I

    .line 4338
    move-object/from16 v0, p0

    iput v12, v0, mUserPaddingEnd:I

    .line 4340
    if-eqz v8, :cond_5f3

    .line 4341
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4346
    :cond_5f3
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLeftPaddingDefined:Z

    .line 4347
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, mRightPaddingDefined:Z

    .line 4349
    if-ltz v24, :cond_615

    .line 4350
    move/from16 v21, v24

    .line 4351
    move/from16 v40, v24

    .line 4352
    move/from16 v25, v24

    .line 4353
    move/from16 v9, v24

    .line 4354
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingLeftInitial:I

    .line 4355
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingRightInitial:I

    .line 4358
    :cond_615
    invoke-direct/range {p0 .. p0}, isRtlCompatibilityMode()Z

    move-result v51

    if-eqz v51, :cond_6ef

    .line 4366
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLeftPaddingDefined:Z

    move/from16 v51, v0

    if-nez v51, :cond_627

    if-eqz v34, :cond_627

    .line 4367
    move/from16 v21, v33

    .line 4369
    :cond_627
    if-ltz v21, :cond_6df

    move/from16 v51, v21

    :goto_62b
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingLeftInitial:I

    .line 4370
    move-object/from16 v0, p0

    iget-boolean v0, v0, mRightPaddingDefined:Z

    move/from16 v51, v0

    if-nez v51, :cond_63d

    if-eqz v13, :cond_63d

    .line 4371
    move/from16 v25, v12

    .line 4373
    :cond_63d
    if-ltz v25, :cond_6e7

    move/from16 v51, v25

    :goto_641
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingRightInitial:I

    .line 4390
    :cond_647
    :goto_647
    move-object/from16 v0, p0

    iget v0, v0, mUserPaddingLeftInitial:I

    move/from16 v51, v0

    if-ltz v40, :cond_71a

    .end local v40    # "topPadding":I
    :goto_64f
    move-object/from16 v0, p0

    iget v0, v0, mUserPaddingRightInitial:I

    move/from16 v52, v0

    if-ltz v9, :cond_722

    .end local v9    # "bottomPadding":I
    :goto_657
    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v40

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3, v9}, internalSetPadding(IIII)V

    .line 4396
    if-eqz v46, :cond_66d

    .line 4397
    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, setFlags(II)V

    .line 4400
    :cond_66d
    if-eqz v19, :cond_674

    .line 4401
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 4404
    :cond_674
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 4407
    if-eqz v30, :cond_67c

    .line 4408
    invoke-virtual/range {p0 .. p0}, recomputePadding()V

    .line 4411
    :cond_67c
    if-nez v49, :cond_680

    if-eqz v50, :cond_689

    .line 4412
    :cond_680
    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, scrollTo(II)V

    .line 4415
    :cond_689
    if-eqz v41, :cond_6c8

    .line 4416
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, setTranslationX(F)V

    .line 4417
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, setTranslationY(F)V

    .line 4418
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, setTranslationZ(F)V

    .line 4419
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, setElevation(F)V

    .line 4420
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, setRotation(F)V

    .line 4421
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, setRotationX(F)V

    .line 4422
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, setRotationY(F)V

    .line 4423
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, setScaleX(F)V

    .line 4424
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, setScaleY(F)V

    .line 4427
    :cond_6c8
    if-nez v32, :cond_6db

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0x200

    move/from16 v51, v0

    if-eqz v51, :cond_6db

    .line 4428
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, setScrollContainer(Z)V

    .line 4431
    :cond_6db
    invoke-virtual/range {p0 .. p0}, computeOpaqueFlags()V

    .line 4432
    return-void

    .line 4369
    .restart local v9    # "bottomPadding":I
    .restart local v40    # "topPadding":I
    :cond_6df
    move-object/from16 v0, p0

    iget v0, v0, mUserPaddingLeftInitial:I

    move/from16 v51, v0

    goto/16 :goto_62b

    .line 4373
    :cond_6e7
    move-object/from16 v0, p0

    iget v0, v0, mUserPaddingRightInitial:I

    move/from16 v51, v0

    goto/16 :goto_641

    .line 4380
    :cond_6ef
    if-nez v34, :cond_6f3

    if-eqz v13, :cond_717

    :cond_6f3
    const/16 v16, 0x1

    .line 4382
    .local v16, "hasRelativePadding":Z
    :goto_6f5
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLeftPaddingDefined:Z

    move/from16 v51, v0

    if-eqz v51, :cond_705

    if-nez v16, :cond_705

    .line 4383
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingLeftInitial:I

    .line 4385
    :cond_705
    move-object/from16 v0, p0

    iget-boolean v0, v0, mRightPaddingDefined:Z

    move/from16 v51, v0

    if-eqz v51, :cond_647

    if-nez v16, :cond_647

    .line 4386
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, mUserPaddingRightInitial:I

    goto/16 :goto_647

    .line 4380
    .end local v16    # "hasRelativePadding":Z
    :cond_717
    const/16 v16, 0x0

    goto :goto_6f5

    .line 4390
    :cond_71a
    move-object/from16 v0, p0

    iget v0, v0, mPaddingTop:I

    move/from16 v40, v0

    goto/16 :goto_64f

    .end local v40    # "topPadding":I
    :cond_722
    move-object/from16 v0, p0

    iget v9, v0, mPaddingBottom:I

    goto/16 :goto_657

    .line 3968
    :pswitch_data_728
    .packed-switch 0x8
        :pswitch_35f
        :pswitch_1d9
        :pswitch_1e9
        :pswitch_10a
        :pswitch_114
        :pswitch_7a
        :pswitch_94
        :pswitch_ad
        :pswitch_be
        :pswitch_c7
        :pswitch_d8
        :pswitch_205
        :pswitch_215
        :pswitch_27f
        :pswitch_1f5
        :pswitch_328
        :pswitch_33e
        :pswitch_77
        :pswitch_3b8
        :pswitch_3c8
        :pswitch_3d8
        :pswitch_3e8
        :pswitch_22b
        :pswitch_243
        :pswitch_257
        :pswitch_2ca
        :pswitch_26b
        :pswitch_408
        :pswitch_418
        :pswitch_2fe
        :pswitch_38c
        :pswitch_375
        :pswitch_313
        :pswitch_428
        :pswitch_2e0
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_44e
        :pswitch_3a0
        :pswitch_11e
        :pswitch_12f
        :pswitch_145
        :pswitch_15b
        :pswitch_16c
        :pswitch_1c1
        :pswitch_1cd
        :pswitch_19d
        :pswitch_1a9
        :pswitch_1b5
        :pswitch_458
        :pswitch_3f8
        :pswitch_468
        :pswitch_346
        :pswitch_4e0
        :pswitch_47d
        :pswitch_4b3
        :pswitch_293
        :pswitch_e1
        :pswitch_f7
        :pswitch_2ed
        :pswitch_4f1
        :pswitch_17d
        :pswitch_502
        :pswitch_50f
        :pswitch_18e
        :pswitch_520
        :pswitch_539
        :pswitch_572
        :pswitch_5b5
        :pswitch_5ca
    .end packed-switch
.end method

.method static synthetic access$2100()Z
    .registers 1

    .prologue
    .line 752
    sget-boolean v0, sUseBrokenMakeMeasureSpec:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/view/View;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    .line 752
    iput-boolean p1, p0, mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/view/View;ZFF)V
    .registers 4
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 752
    invoke-direct {p0, p1, p2, p3}, setPressed(ZFF)V

    return-void
.end method

.method static synthetic access$2400(Landroid/view/View;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I

    .prologue
    .line 752
    invoke-direct {p0, p1}, checkForLongClick(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/view/View;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 752
    iget v0, p0, mLabelForId:I

    return v0
.end method

.method static synthetic access$2600(Landroid/view/View;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 752
    invoke-direct {p0}, inLiveRegion()Z

    move-result v0

    return v0
.end method

.method private applyBackgroundTint()V
    .registers 4

    .prologue
    .line 17446
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_30

    iget-object v1, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    if-eqz v1, :cond_30

    .line 17447
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    .line 17448
    .local v0, "tintInfo":Landroid/view/View$TintInfo;
    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    if-nez v1, :cond_12

    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_30

    .line 17449
    :cond_12
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 17451
    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_25

    .line 17452
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 17455
    :cond_25
    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_30

    .line 17456
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 17460
    .end local v0    # "tintInfo":Landroid/view/View$TintInfo;
    :cond_30
    return-void
.end method

.method private checkForLongClick(I)V
    .registers 6
    .param p1, "delayOffset"    # I

    .prologue
    const/high16 v1, 0x200000

    .line 19566
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_26

    .line 19567
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasPerformedLongPress:Z

    .line 19569
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_16

    .line 19570
    new-instance v0, Landroid/view/View$CheckForLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 19572
    :cond_16
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 19573
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 19576
    :cond_26
    return-void
.end method

.method private cleanupDraw()V
    .registers 2

    .prologue
    .line 14390
    invoke-direct {p0}, resetDisplayList()V

    .line 14391
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_e

    .line 14392
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->cancelInvalidate(Landroid/view/View;)V

    .line 14394
    :cond_e
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .registers 3
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .prologue
    .line 18730
    or-int v0, p0, p1

    return v0
.end method

.method private damageShadowReceiver()V
    .registers 5

    .prologue
    .line 12752
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12753
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_14

    .line 12754
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 12755
    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_14

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_14

    move-object v2, v1

    .line 12756
    check-cast v2, Landroid/view/ViewGroup;

    .line 12757
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->damageInParent()V

    .line 12760
    .end local v1    # "p":Landroid/view/ViewParent;
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_14
    return-void
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .registers 5
    .param p0, "depth"    # I

    .prologue
    const/16 v3, 0x20

    .line 18468
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18469
    .local v1, "spaces":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 18470
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18469
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 18472
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9079
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 9080
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1d

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget v3, p0, mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1d

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 9093
    :cond_1c
    :goto_1c
    return v1

    .line 9086
    :cond_1d
    invoke-virtual {p0, p1}, onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 9090
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_2c

    .line 9091
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2c
    move v1, v2

    .line 9093
    goto :goto_1c
.end method

.method private drawAccessibilityFocus(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 16386
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v7, :cond_6

    .line 16432
    :cond_5
    :goto_5
    return-void

    .line 16390
    :cond_6
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 16391
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    .line 16392
    .local v5, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v7

    if-ne v7, p0, :cond_5

    .line 16396
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 16397
    .local v2, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 16400
    const/4 v4, 0x0

    .line 16408
    .local v4, "universalSwitchEnabled":Z
    if-nez v4, :cond_2b

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 16411
    :cond_2b
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 16412
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    .line 16416
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 16417
    .local v6, "virtualView":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v6, :cond_6e

    .line 16418
    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 16419
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v7, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    .line 16420
    .local v3, "offset":[I
    invoke-virtual {p0, v3}, getLocationOnScreen([I)V

    .line 16421
    aget v7, v3, v10

    neg-int v7, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    neg-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 16426
    .end local v3    # "offset":[I
    :goto_4b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16427
    iget v7, p0, mScrollX:I

    int-to-float v7, v7

    iget v8, p0, mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16428
    iget v7, p0, mRight:I

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mBottom:I

    iget v9, p0, mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v10, v10, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 16429
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 16430
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 16423
    :cond_6e
    iget v7, p0, mRight:I

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mBottom:I

    iget v9, p0, mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v10, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4b
.end method

.method private drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z
    .registers 22
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "drawingTime"    # J
    .param p4, "a"    # Landroid/view/animation/Animation;
    .param p5, "scalingRequired"    # Z

    .prologue
    .line 15723
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 15724
    .local v10, "flags":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v11

    .line 15725
    .local v11, "initialized":Z
    if-nez v11, :cond_56

    .line 15726
    move-object/from16 v0, p0

    iget v3, v0, mRight:I

    move-object/from16 v0, p0

    iget v4, v0, mLeft:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, mTop:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 15727
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mRight:I

    move-object/from16 v0, p0

    iget v6, v0, mLeft:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, mBottom:I

    move-object/from16 v0, p0

    iget v7, v0, mTop:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 15728
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V

    .line 15729
    :cond_53
    invoke-virtual/range {p0 .. p0}, onAnimationStart()V

    .line 15732
    :cond_56
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v14

    .line 15733
    .local v14, "t":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v13

    .line 15734
    .local v13, "more":Z
    if-eqz p5, :cond_a7

    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a7

    .line 15735
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v3, :cond_81

    .line 15736
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 15738
    :cond_81
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 15739
    .local v9, "invalidationTransform":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 15744
    :goto_8e
    if-eqz v13, :cond_a6

    .line 15745
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-nez v3, :cond_cd

    .line 15746
    and-int/lit16 v3, v10, 0x90

    const/16 v4, 0x80

    if-ne v3, v4, :cond_a9

    .line 15748
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 15773
    :cond_a6
    :goto_a6
    return v13

    .line 15741
    .end local v9    # "invalidationTransform":Landroid/view/animation/Transformation;
    :cond_a7
    move-object v9, v14

    .restart local v9    # "invalidationTransform":Landroid/view/animation/Transformation;
    goto :goto_8e

    .line 15749
    :cond_a9
    and-int/lit8 v3, v10, 0x4

    if-nez v3, :cond_a6

    .line 15752
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 15753
    move-object/from16 v0, p0

    iget v3, v0, mLeft:I

    move-object/from16 v0, p0

    iget v4, v0, mTop:I

    move-object/from16 v0, p0

    iget v5, v0, mRight:I

    move-object/from16 v0, p0

    iget v6, v0, mBottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_a6

    .line 15756
    :cond_cd
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v3, :cond_dc

    .line 15757
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 15759
    :cond_dc
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 15760
    .local v8, "region":Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, mRight:I

    move-object/from16 v0, p0

    iget v6, v0, mLeft:I

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, mBottom:I

    move-object/from16 v0, p0

    iget v7, v0, mTop:I

    sub-int v7, v3, v7

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v9}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 15765
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 15767
    move-object/from16 v0, p0

    iget v3, v0, mLeft:I

    iget v4, v8, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    add-int v12, v3, v4

    .line 15768
    .local v12, "left":I
    move-object/from16 v0, p0

    iget v3, v0, mTop:I

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int v15, v3, v4

    .line 15769
    .local v15, "top":I
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v15, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_a6
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 16440
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 16441
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_6

    .line 16473
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :goto_5
    return-void

    .line 16445
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_6
    iget-boolean v4, p0, mBackgroundSizeChanged:Z

    if-eqz v4, :cond_1f

    .line 16446
    iget v4, p0, mRight:I

    iget v5, p0, mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16447
    iput-boolean v7, p0, mBackgroundSizeChanged:Z

    .line 16448
    iget v4, p0, mPrivateFlags3:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, mPrivateFlags3:I

    .line 16452
    :cond_1f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_4a

    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_4a

    .line 16454
    iget-object v4, p0, mBackgroundRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0, v0, v4}, getDrawableRenderNode(Landroid/graphics/drawable/Drawable;Landroid/view/RenderNode;)Landroid/view/RenderNode;

    move-result-object v4

    iput-object v4, p0, mBackgroundRenderNode:Landroid/view/RenderNode;

    .line 16456
    iget-object v1, p0, mBackgroundRenderNode:Landroid/view/RenderNode;

    .line 16457
    .local v1, "displayList":Landroid/view/RenderNode;
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 16458
    invoke-direct {p0, v1}, setBackgroundDisplayListProperties(Landroid/view/RenderNode;)V

    .line 16459
    check-cast p1, Landroid/view/HardwareCanvas;

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    goto :goto_5

    .line 16464
    .end local v1    # "displayList":Landroid/view/RenderNode;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_4a
    iget v2, p0, mScrollX:I

    .line 16465
    .local v2, "scrollX":I
    iget v3, p0, mScrollY:I

    .line 16466
    .local v3, "scrollY":I
    or-int v4, v2, v3

    if-nez v4, :cond_56

    .line 16467
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 16469
    :cond_56
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16470
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16471
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5
.end method

.method private static dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 22194
    const-string v4, "%32s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 22195
    .local v0, "bits":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 22196
    .local v3, "prefix":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_54

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22197
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22198
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22199
    return-void

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "output":Ljava/lang/String;
    :cond_54
    move-object v4, p1

    .line 22196
    goto :goto_29
.end method

.method private static dumpFlags()V
    .registers 15

    .prologue
    .line 22164
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 22166
    .local v4, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_4
    const-class v13, Landroid/view/View;

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_c
    if-ge v6, v9, :cond_86

    aget-object v3, v1, v6

    .line 22167
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .line 22168
    .local v10, "modifiers":I
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_38

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 22169
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 22170
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .line 22171
    .local v11, "value":I
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13, v11}, dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 22166
    .end local v11    # "value":I
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 22172
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, [I

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 22173
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    move-object v0, v13

    check-cast v0, [I

    move-object v12, v0

    .line 22174
    .local v12, "values":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_53
    array-length v13, v12

    if-ge v5, v13, :cond_38

    .line 22175
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget v14, v12, v5

    invoke-static {v4, v13, v14}, dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    :try_end_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7c} :catch_7f

    .line 22174
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 22180
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "modifiers":I
    .end local v12    # "values":[I
    :catch_7f
    move-exception v2

    .line 22181
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 22184
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    :cond_86
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 22185
    .local v8, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22186
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 22187
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_98
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 22188
    .local v7, "key":Ljava/lang/String;
    const-string v14, "View"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 22190
    .end local v7    # "key":Ljava/lang/String;
    :cond_b0
    return-void
.end method

.method private findLabelForView(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "labeledId"    # I

    .prologue
    .line 6159
    iget-object v0, p0, mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    if-nez v0, :cond_c

    .line 6160
    new-instance v0, Landroid/view/View$MatchLabelForPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$MatchLabelForPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    .line 6162
    :cond_c
    iget-object v0, p0, mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    # setter for: Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I
    invoke-static {v0, p2}, Landroid/view/View$MatchLabelForPredicate;->access$1002(Landroid/view/View$MatchLabelForPredicate;I)I

    .line 6163
    iget-object v0, p0, mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    invoke-virtual {p0, p1, v0}, findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 7799
    iget-object v1, p0, mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    if-nez v1, :cond_c

    .line 7800
    new-instance v1, Landroid/view/View$MatchIdPredicate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/View$MatchIdPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v1, p0, mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    .line 7802
    :cond_c
    iget-object v1, p0, mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    iput p2, v1, Landroid/view/View$MatchIdPredicate;->mId:I

    .line 7803
    iget-object v1, p0, mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    invoke-virtual {p1, p0, v1}, findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    .line 7804
    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_30

    .line 7805
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find view with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7807
    :cond_30
    return-object v0
.end method

.method private fitSystemWindowsInt(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, -0x80000000

    .line 6885
    iget v2, p0, mViewFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    .line 6886
    iput v4, p0, mUserPaddingStart:I

    .line 6887
    iput v4, p0, mUserPaddingEnd:I

    .line 6888
    sget-object v2, sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 6889
    .local v0, "localInsets":Landroid/graphics/Rect;
    if-nez v0, :cond_21

    .line 6890
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "localInsets":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6891
    .restart local v0    # "localInsets":Landroid/graphics/Rect;
    sget-object v2, sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6893
    :cond_21
    invoke-virtual {p0, p1, v0}, computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 6894
    .local v1, "res":Z
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, mUserPaddingLeftInitial:I

    .line 6895
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, mUserPaddingRightInitial:I

    .line 6896
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, internalSetPadding(IIII)V

    .line 6900
    .end local v0    # "localInsets":Landroid/graphics/Rect;
    .end local v1    # "res":Z
    :goto_38
    return v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method public static generateViewId()I
    .registers 3

    .prologue
    .line 20518
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 20520
    add-int/lit8 v0, v1, 0x1

    .line 20521
    const v2, 0xffffff

    if-le v0, v2, :cond_e

    const/4 v0, 0x1

    .line 20522
    :cond_e
    sget-object v2, sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20523
    return v1
.end method

.method private static getAttributeMap()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4593
    sget-object v0, mAttributeMap:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 4594
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, mAttributeMap:Landroid/util/SparseArray;

    .line 4596
    :cond_b
    sget-object v0, mAttributeMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getDefaultSize(II)I
    .registers 5
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 18786
    move v0, p0

    .line 18787
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 18788
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 18790
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_12

    .line 18799
    :goto_c
    return v0

    .line 18792
    :sswitch_d
    move v0, p0

    .line 18793
    goto :goto_c

    .line 18796
    :sswitch_f
    move v0, v2

    goto :goto_c

    .line 18790
    nop

    :sswitch_data_12
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_f
    .end sparse-switch
.end method

.method private getDrawableRenderNode(Landroid/graphics/drawable/Drawable;Landroid/view/RenderNode;)Landroid/view/RenderNode;
    .registers 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    .line 16494
    if-nez p2, :cond_e

    .line 16495
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object p2

    .line 16498
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 16499
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 16500
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 16501
    .local v2, "height":I
    invoke-virtual {p2, v3, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v1

    .line 16503
    .local v1, "canvas":Landroid/view/HardwareCanvas;
    :try_start_1e
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3f

    .line 16505
    invoke-virtual {p2, v1}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 16509
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 16510
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/RenderNode;->setProjectBackwards(Z)Z

    .line 16511
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/RenderNode;->setProjectionReceiver(Z)Z

    .line 16512
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 16513
    return-object p2

    .line 16505
    :catchall_3f
    move-exception v4

    invoke-virtual {p2, v1}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    throw v4
.end method

.method private getFinalAlpha()F
    .registers 3

    .prologue
    .line 11515
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_e

    .line 11516
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    iget-object v1, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    mul-float/2addr v0, v1

    .line 11518
    :goto_d
    return v0

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_d
.end method

.method private getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3

    .prologue
    .line 22742
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_1b

    .line 22743
    iget-object v1, p0, mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_13

    .line 22744
    iget-object v1, p0, mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 22752
    :cond_12
    :goto_12
    return-object v0

    .line 22746
    :cond_13
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 22747
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v0, :cond_12

    .line 22752
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1b
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_12
.end method

.method private getProjectionReceiver()Landroid/view/View;
    .registers 4

    .prologue
    .line 12726
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 12727
    .local v0, "p":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_19

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_19

    move-object v1, v0

    .line 12728
    check-cast v1, Landroid/view/View;

    .line 12729
    .local v1, "v":Landroid/view/View;
    invoke-direct {v1}, isProjectionReceiver()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 12735
    .end local v1    # "v":Landroid/view/View;
    :goto_13
    return-object v1

    .line 12732
    .restart local v1    # "v":Landroid/view/View;
    :cond_14
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 12733
    goto :goto_4

    .line 12735
    .end local v1    # "v":Landroid/view/View;
    :cond_19
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private getScrollCache()Landroid/view/View$ScrollabilityCache;
    .registers 2

    .prologue
    .line 4996
    invoke-direct {p0}, initScrollCache()V

    .line 4997
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    return-object v0
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .registers 6

    .prologue
    .line 8160
    invoke-virtual {p0}, isFocusableInTouchMode()Z

    move-result v1

    .line 8161
    .local v1, "focusableInTouchMode":Z
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    .line 8162
    .local v0, "ancestor":Landroid/view/ViewParent;
    :goto_6
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_24

    move-object v2, v0

    .line 8163
    check-cast v2, Landroid/view/ViewGroup;

    .line 8164
    .local v2, "vgAncestor":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x60000

    if-eq v3, v4, :cond_1d

    if-nez v1, :cond_1f

    invoke-virtual {v2}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 8166
    :cond_1d
    const/4 v3, 0x1

    .line 8171
    .end local v2    # "vgAncestor":Landroid/view/ViewGroup;
    :goto_1e
    return v3

    .line 8168
    .restart local v2    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_1f
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8170
    goto :goto_6

    .line 8171
    .end local v2    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_24
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method private hasListenersForAccessibility()Z
    .registers 3

    .prologue
    .line 8414
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 8415
    .local v0, "info":Landroid/view/View$ListenerInfo;
    iget-object v1, p0, mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v1

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$800(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_28

    :cond_26
    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private hasRtlSupport()Z
    .registers 2

    .prologue
    .line 14104
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private inLiveRegion()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 22143
    invoke-virtual {p0}, getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    .line 22156
    :goto_8
    return v1

    .line 22147
    :cond_9
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 22148
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_d
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_21

    move-object v1, v0

    .line 22149
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v2

    .line 22151
    goto :goto_8

    .line 22153
    :cond_1c
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_d

    .line 22156
    :cond_21
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 19589
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 19590
    .local v0, "factory":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .registers 3

    .prologue
    .line 4990
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_11

    .line 4991
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4993
    :cond_11
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12463
    iget-object v1, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_12

    iget-object v1, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isDrawablesResolved()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 16974
    iget v0, p0, mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isHoverable()Z
    .registers 6

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x0

    .line 10086
    iget v0, p0, mViewFlags:I

    .line 10087
    .local v0, "viewFlags":I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_c

    .line 10091
    :cond_b
    :goto_b
    return v1

    :cond_c
    and-int/lit16 v2, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_16

    and-int v2, v0, v4

    if-ne v2, v4, :cond_b

    :cond_16
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public static isLayoutModeOptical(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 16661
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isProjectionReceiver()Z
    .registers 2

    .prologue
    .line 12742
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isRtlCompatibilityMode()Z
    .registers 3

    .prologue
    .line 14112
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 14113
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-ge v0, v1, :cond_14

    invoke-direct {p0}, isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_14
    invoke-direct {p0}, hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private isSystemApp()Z
    .registers 2

    .prologue
    .line 14120
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected static mergeDrawableStates([I[I)[I
    .registers 7
    .param p0, "baseState"    # [I
    .param p1, "additionalState"    # [I

    .prologue
    .line 17170
    array-length v0, p0

    .line 17171
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .line 17172
    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_c

    aget v2, p0, v1

    if-nez v2, :cond_c

    .line 17173
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 17175
    :cond_c
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 17176
    return-object p0
.end method

.method private needRtlPropertiesResolution()Z
    .registers 3

    .prologue
    const v1, 0x60010220

    .line 14128
    iget v0, p0, mPrivateFlags2:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static offsetRects(Ljava/util/List;FF)V
    .registers 6
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .line 6354
    .local p0, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 6355
    .local v2, "rectCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_13

    .line 6356
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 6357
    .local v1, "intersection":Landroid/graphics/RectF;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 6355
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6359
    .end local v1    # "intersection":Landroid/graphics/RectF;
    :cond_13
    return-void
.end method

.method private postSendViewScrolledAccessibilityEventCallback()V
    .registers 5

    .prologue
    .line 13222
    iget-object v0, p0, mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_c

    .line 13223
    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    .line 13225
    :cond_c
    iget-object v0, p0, mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_20

    .line 13226
    iget-object v0, p0, mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 13227
    iget-object v0, p0, mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 13230
    :cond_20
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .registers 5
    .param p0, "flags"    # I

    .prologue
    .line 16560
    const-string v1, ""

    .line 16561
    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 16562
    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 16563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16564
    add-int/lit8 v0, v0, 0x1

    .line 16567
    :cond_1d
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_76

    .line 16585
    :goto_22
    return-object v1

    .line 16569
    :sswitch_23
    if-lez v0, :cond_38

    .line 16570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16572
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16574
    goto :goto_22

    .line 16576
    :sswitch_4c
    if-lez v0, :cond_61

    .line 16577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16579
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16581
    goto :goto_22

    .line 16567
    nop

    :sswitch_data_76
    .sparse-switch
        0x4 -> :sswitch_23
        0x8 -> :sswitch_4c
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .registers 5
    .param p0, "privateFlags"    # I

    .prologue
    .line 16596
    const-string v1, ""

    .line 16597
    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 16599
    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 16600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16601
    add-int/lit8 v0, v0, 0x1

    .line 16604
    :cond_1d
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 16605
    if-lez v0, :cond_37

    .line 16606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16608
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16609
    add-int/lit8 v0, v0, 0x1

    .line 16612
    :cond_4c
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7b

    .line 16613
    if-lez v0, :cond_66

    .line 16614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16616
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16617
    add-int/lit8 v0, v0, 0x1

    .line 16620
    :cond_7b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_ab

    .line 16621
    if-lez v0, :cond_96

    .line 16622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16624
    :cond_96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16625
    add-int/lit8 v0, v0, 0x1

    .line 16628
    :cond_ab
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_db

    .line 16629
    if-lez v0, :cond_c6

    .line 16630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16632
    :cond_c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16633
    add-int/lit8 v0, v0, 0x1

    .line 16636
    :cond_db
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_109

    .line 16637
    if-lez v0, :cond_f6

    .line 16638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16640
    :cond_f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16643
    :cond_109
    return-object v1
.end method

.method private rebuildOutline()V
    .registers 4

    .prologue
    .line 12114
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_5

    .line 12127
    :goto_4
    return-void

    .line 12116
    :cond_5
    iget-object v1, p0, mOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v1, :cond_10

    .line 12118
    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    goto :goto_4

    .line 12120
    :cond_10
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    .line 12121
    .local v0, "outline":Landroid/graphics/Outline;
    invoke-virtual {v0}, Landroid/graphics/Outline;->setEmpty()V

    .line 12122
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 12124
    iget-object v1, p0, mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 12125
    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    goto :goto_4
.end method

.method private removeLongPressCallback()V
    .registers 2

    .prologue
    .line 10478
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_9

    .line 10479
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10481
    :cond_9
    return-void
.end method

.method private removePerformClickCallback()V
    .registers 2

    .prologue
    .line 10487
    iget-object v0, p0, mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_9

    .line 10488
    iget-object v0, p0, mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10490
    :cond_9
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .registers 3

    .prologue
    .line 10534
    iget-object v0, p0, mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_e

    .line 10535
    iget-object v0, p0, mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10536
    iget-object v0, p0, mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 10538
    :cond_e
    return-void
.end method

.method private removeTapCallback()V
    .registers 3

    .prologue
    .line 10506
    iget-object v0, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_11

    .line 10507
    iget v0, p0, mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 10508
    iget-object v0, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10510
    :cond_11
    return-void
.end method

.method private removeUnsetPressCallback()V
    .registers 2

    .prologue
    .line 10496
    iget v0, p0, mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_13

    iget-object v0, p0, mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_13

    .line 10497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setPressed(Z)V

    .line 10498
    iget-object v0, p0, mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10500
    :cond_13
    return-void
.end method

.method private requestFocusNoSearch(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x40000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8115
    iget v2, p0, mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_10

    iget v2, p0, mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_11

    .line 8132
    :cond_10
    :goto_10
    return v0

    .line 8121
    :cond_11
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, p0, mViewFlags:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_10

    .line 8127
    :cond_1c
    invoke-direct {p0}, hasAncestorThatBlocksDescendantFocus()Z

    move-result v2

    if-nez v2, :cond_10

    .line 8131
    invoke-virtual {p0, p1, p2}, handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v1

    .line 8132
    goto :goto_10
.end method

.method private resetDisplayList()V
    .registers 2

    .prologue
    .line 15167
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 15168
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    .line 15171
    :cond_d
    iget-object v0, p0, mBackgroundRenderNode:Landroid/view/RenderNode;

    if-eqz v0, :cond_1e

    iget-object v0, p0, mBackgroundRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 15172
    iget-object v0, p0, mBackgroundRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    .line 15174
    :cond_1e
    return-void
.end method

.method private resetPressedState()V
    .registers 3

    .prologue
    .line 6534
    iget v0, p0, mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 6545
    :cond_8
    :goto_8
    return-void

    .line 6538
    :cond_9
    invoke-virtual {p0}, isPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6539
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setPressed(Z)V

    .line 6541
    iget-boolean v0, p0, mHasPerformedLongPress:Z

    if-nez v0, :cond_8

    .line 6542
    invoke-direct {p0}, removeLongPressCallback()V

    goto :goto_8
.end method

.method public static resolveSize(II)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 18738
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .registers 7
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 18755
    move v0, p0

    .line 18756
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 18757
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 18758
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_1e

    .line 18773
    :goto_c
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 18760
    :sswitch_11
    move v0, p0

    .line 18761
    goto :goto_c

    .line 18763
    :sswitch_13
    if-ge v2, p0, :cond_1a

    .line 18764
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_c

    .line 18766
    :cond_1a
    move v0, p0

    .line 18768
    goto :goto_c

    .line 18770
    :sswitch_1c
    move v0, v2

    goto :goto_c

    .line 18758
    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_13
        0x0 -> :sswitch_11
        0x40000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method private saveAttributeData(Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .registers 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v6, 0x0

    .line 4600
    if-nez p1, :cond_2d

    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    add-int/2addr v6, v7

    mul-int/lit8 v3, v6, 0x2

    .line 4601
    .local v3, "length":I
    new-array v6, v3, [Ljava/lang/String;

    iput-object v6, p0, mAttributes:[Ljava/lang/String;

    .line 4603
    const/4 v1, 0x0

    .line 4604
    .local v1, "i":I
    if-eqz p1, :cond_32

    .line 4605
    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v1, v6, :cond_32

    .line 4606
    iget-object v6, p0, mAttributes:[Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 4607
    iget-object v6, p0, mAttributes:[Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 4605
    add-int/lit8 v1, v1, 0x2

    goto :goto_12

    .line 4600
    .end local v1    # "i":I
    .end local v3    # "length":I
    :cond_2d
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    goto :goto_3

    .line 4612
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    :cond_32
    invoke-static {}, getAttributeMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 4613
    .local v0, "attributeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_37
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_75

    .line 4614
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 4616
    const/4 v6, 0x0

    :try_start_44
    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 4617
    .local v4, "resourceId":I
    if-nez v4, :cond_4d

    .line 4613
    .end local v4    # "resourceId":I
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 4621
    .restart local v4    # "resourceId":I
    :cond_4d
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4622
    .local v5, "resourceName":Ljava/lang/String;
    if-nez v5, :cond_60

    .line 4623
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 4624
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4627
    :cond_60
    iget-object v6, p0, mAttributes:[Ljava/lang/String;

    aput-object v5, v6, v1

    .line 4628
    iget-object v6, p0, mAttributes:[Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_72
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_72} :catch_76

    .line 4629
    add-int/lit8 v1, v1, 0x2

    goto :goto_4a

    .line 4635
    .end local v4    # "resourceId":I
    .end local v5    # "resourceName":Ljava/lang/String;
    :cond_75
    return-void

    .line 4630
    :catch_76
    move-exception v6

    goto :goto_4a
.end method

.method private sendAccessibilityHoverEvent(I)V
    .registers 5
    .param p1, "eventType"    # I

    .prologue
    .line 8010
    move-object v1, p0

    .line 8012
    .local v1, "source":Landroid/view/View;
    :goto_1
    invoke-virtual {v1}, includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8013
    invoke-virtual {v1, p1}, sendAccessibilityEvent(I)V

    .line 8020
    :cond_a
    return-void

    .line 8016
    :cond_b
    invoke-virtual {v1}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8017
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_a

    move-object v1, v0

    .line 8018
    check-cast v1, Landroid/view/View;

    goto :goto_1
.end method

.method private sendViewTextTraversedAtGranularityEvent(IIII)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "granularity"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I

    .prologue
    .line 8689
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_5

    .line 8701
    :goto_4
    return-void

    .line 8692
    :cond_5
    const/high16 v1, 0x20000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 8694
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8695
    invoke-virtual {p0, v0}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8696
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 8697
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 8698
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 8699
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 8700
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_4
.end method

.method private setBackgroundDisplayListProperties(Landroid/view/RenderNode;)V
    .registers 3
    .param p1, "displayList"    # Landroid/view/RenderNode;

    .prologue
    .line 16481
    iget v0, p0, mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setTranslationX(F)Z

    .line 16482
    iget v0, p0, mScrollY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setTranslationY(F)Z

    .line 16483
    return-void
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 18374
    iget-object v0, p0, mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 18375
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mKeyedTags:Landroid/util/SparseArray;

    .line 18378
    :cond_c
    iget-object v0, p0, mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18379
    return-void
.end method

.method private setMeasuredDimensionRaw(II)V
    .registers 4
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 18715
    iput p1, p0, mMeasuredWidth:I

    .line 18716
    iput p2, p0, mMeasuredHeight:I

    .line 18718
    iget v0, p0, mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, mPrivateFlags:I

    .line 18719
    return-void
.end method

.method private setOpticalFrame(IIII)Z
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 16665
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2f

    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 16667
    .local v1, "parentInsets":Landroid/graphics/Insets;
    :goto_e
    invoke-virtual {p0}, getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 16668
    .local v0, "childInsets":Landroid/graphics/Insets;
    iget v2, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, p3

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v5, p4

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, setFrame(IIII)Z

    move-result v2

    return v2

    .line 16665
    .end local v0    # "childInsets":Landroid/graphics/Insets;
    .end local v1    # "parentInsets":Landroid/graphics/Insets;
    :cond_2f
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_e
.end method

.method private setOutlineProviderFromAttribute(I)V
    .registers 3
    .param p1, "providerInt"    # I

    .prologue
    .line 12043
    packed-switch p1, :pswitch_data_1c

    .line 12057
    :goto_3
    return-void

    .line 12045
    :pswitch_4
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_3

    .line 12048
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_3

    .line 12051
    :pswitch_f
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_3

    .line 12054
    :pswitch_15
    sget-object v0, Landroid/view/ViewOutlineProvider;->PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_3

    .line 12043
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method private setPressed(ZFF)V
    .registers 4
    .param p1, "pressed"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 7551
    if-eqz p1, :cond_5

    .line 7552
    invoke-virtual {p0, p2, p3}, drawableHotspotChanged(FF)V

    .line 7555
    :cond_5
    invoke-virtual {p0, p1}, setPressed(Z)V

    .line 7556
    return-void
.end method

.method private sizeChange(IIII)V
    .registers 6
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 16819
    invoke-virtual {p0, p1, p2, p3, p4}, onSizeChanged(IIII)V

    .line 16820
    iget-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_19

    .line 16821
    iget-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setRight(I)V

    .line 16822
    iget-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBottom(I)V

    .line 16824
    :cond_19
    iget v0, p0, mPrivateFlags3:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mPrivateFlags3:I

    .line 16825
    return-void
.end method

.method private skipInvalidate()Z
    .registers 2

    .prologue
    .line 12598
    iget v0, p0, mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1c

    iget-object v0, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1c

    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private traverseAtGranularity(IZZ)Z
    .registers 14
    .param p1, "granularity"    # I
    .param p2, "forward"    # Z
    .param p3, "extendSelection"    # Z

    .prologue
    .line 8600
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v8

    .line 8601
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_e

    .line 8602
    :cond_c
    const/4 v9, 0x0

    .line 8633
    :goto_d
    return v9

    .line 8604
    :cond_e
    invoke-virtual {p0, p1}, getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    .line 8605
    .local v2, "iterator":Landroid/view/AccessibilityIterators$TextSegmentIterator;
    if-nez v2, :cond_16

    .line 8606
    const/4 v9, 0x0

    goto :goto_d

    .line 8608
    :cond_16
    invoke-virtual {p0}, getAccessibilitySelectionEnd()I

    move-result v1

    .line 8609
    .local v1, "current":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_20

    .line 8610
    if-eqz p2, :cond_2a

    const/4 v1, 0x0

    .line 8612
    :cond_20
    :goto_20
    if-eqz p2, :cond_2f

    invoke-interface {v2, v1}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v3

    .line 8613
    .local v3, "range":[I
    :goto_26
    if-nez v3, :cond_34

    .line 8614
    const/4 v9, 0x0

    goto :goto_d

    .line 8610
    .end local v3    # "range":[I
    :cond_2a
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_20

    .line 8612
    :cond_2f
    invoke-interface {v2, v1}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v3

    goto :goto_26

    .line 8616
    .restart local v3    # "range":[I
    :cond_34
    const/4 v9, 0x0

    aget v5, v3, v9

    .line 8617
    .local v5, "segmentStart":I
    const/4 v9, 0x1

    aget v4, v3, v9

    .line 8620
    .local v4, "segmentEnd":I
    if-eqz p3, :cond_5f

    invoke-virtual {p0}, isAccessibilitySelectionExtendable()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 8621
    invoke-virtual {p0}, getAccessibilitySelectionStart()I

    move-result v7

    .line 8622
    .local v7, "selectionStart":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_4c

    .line 8623
    if-eqz p2, :cond_5b

    move v7, v5

    .line 8625
    :cond_4c
    :goto_4c
    if-eqz p2, :cond_5d

    move v6, v4

    .line 8629
    .local v6, "selectionEnd":I
    :goto_4f
    invoke-virtual {p0, v7, v6}, setAccessibilitySelection(II)V

    .line 8630
    if-eqz p2, :cond_66

    const/16 v0, 0x100

    .line 8632
    .local v0, "action":I
    :goto_56
    invoke-direct {p0, v0, p1, v5, v4}, sendViewTextTraversedAtGranularityEvent(IIII)V

    .line 8633
    const/4 v9, 0x1

    goto :goto_d

    .end local v0    # "action":I
    .end local v6    # "selectionEnd":I
    :cond_5b
    move v7, v4

    .line 8623
    goto :goto_4c

    :cond_5d
    move v6, v5

    .line 8625
    goto :goto_4f

    .line 8627
    .end local v7    # "selectionStart":I
    :cond_5f
    if-eqz p2, :cond_64

    move v6, v4

    .restart local v6    # "selectionEnd":I
    :goto_62
    move v7, v6

    .restart local v7    # "selectionStart":I
    goto :goto_4f

    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :cond_64
    move v6, v5

    goto :goto_62

    .line 8630
    .restart local v6    # "selectionEnd":I
    .restart local v7    # "selectionStart":I
    :cond_66
    const/16 v0, 0x200

    goto :goto_56
.end method

.method private updateDisplayListIfDirty()V
    .registers 13

    .prologue
    const v11, 0x8020

    const v10, -0x600001

    const/4 v9, 0x1

    .line 15084
    iget-object v5, p0, mRenderNode:Landroid/view/RenderNode;

    .line 15085
    .local v5, "renderNode":Landroid/view/RenderNode;
    invoke-virtual {p0}, canHaveDisplayList()Z

    move-result v7

    if-nez v7, :cond_10

    .line 15151
    :goto_f
    return-void

    .line 15090
    :cond_10
    iget v7, p0, mPrivateFlags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_22

    invoke-virtual {v5}, Landroid/view/RenderNode;->isValid()Z

    move-result v7

    if-eqz v7, :cond_22

    iget-boolean v7, p0, mRecreateDisplayList:Z

    if-eqz v7, :cond_ce

    .line 15095
    :cond_22
    invoke-virtual {v5}, Landroid/view/RenderNode;->isValid()Z

    move-result v7

    if-eqz v7, :cond_3a

    iget-boolean v7, p0, mRecreateDisplayList:Z

    if-nez v7, :cond_3a

    .line 15097
    iget v7, p0, mPrivateFlags:I

    or-int/2addr v7, v11

    iput v7, p0, mPrivateFlags:I

    .line 15098
    iget v7, p0, mPrivateFlags:I

    and-int/2addr v7, v10

    iput v7, p0, mPrivateFlags:I

    .line 15099
    invoke-virtual {p0}, dispatchGetDisplayList()V

    goto :goto_f

    .line 15106
    :cond_3a
    iput-boolean v9, p0, mRecreateDisplayList:Z

    .line 15108
    iget v7, p0, mRight:I

    iget v8, p0, mLeft:I

    sub-int v6, v7, v8

    .line 15109
    .local v6, "width":I
    iget v7, p0, mBottom:I

    iget v8, p0, mTop:I

    sub-int v2, v7, v8

    .line 15110
    .local v2, "height":I
    invoke-virtual {p0}, getLayerType()I

    move-result v4

    .line 15112
    .local v4, "layerType":I
    invoke-virtual {v5, v6, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v1

    .line 15113
    .local v1, "canvas":Landroid/view/HardwareCanvas;
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v7, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    invoke-virtual {v1, v7}, Landroid/view/HardwareCanvas;->setHighContrastText(Z)V

    .line 15116
    :try_start_57
    invoke-virtual {p0}, getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v3

    .line 15117
    .local v3, "layer":Landroid/view/HardwareLayer;
    if-eqz v3, :cond_71

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v7

    if-eqz v7, :cond_71

    .line 15118
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7, v8, v9}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    :try_end_6a
    .catchall {:try_start_57 .. :try_end_6a} :catchall_86

    .line 15144
    :cond_6a
    :goto_6a
    invoke-virtual {v5, v1}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 15145
    invoke-virtual {p0, v5}, setDisplayListProperties(Landroid/view/RenderNode;)V

    goto :goto_f

    .line 15119
    :cond_71
    if-ne v4, v9, :cond_8e

    .line 15120
    const/4 v7, 0x1

    :try_start_74
    invoke-virtual {p0, v7}, buildDrawingCache(Z)V

    .line 15121
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 15122
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6a

    .line 15123
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/view/HardwareCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_85
    .catchall {:try_start_74 .. :try_end_85} :catchall_86

    goto :goto_6a

    .line 15144
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    .end local v3    # "layer":Landroid/view/HardwareLayer;
    :catchall_86
    move-exception v7

    invoke-virtual {v5, v1}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 15145
    invoke-virtual {p0, v5}, setDisplayListProperties(Landroid/view/RenderNode;)V

    throw v7

    .line 15126
    .restart local v3    # "layer":Landroid/view/HardwareLayer;
    :cond_8e
    :try_start_8e
    invoke-virtual {p0}, computeScroll()V

    .line 15128
    iget v7, p0, mScrollX:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, p0, mScrollY:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 15129
    iget v7, p0, mPrivateFlags:I

    or-int/2addr v7, v11

    iput v7, p0, mPrivateFlags:I

    .line 15130
    iget v7, p0, mPrivateFlags:I

    and-int/2addr v7, v10

    iput v7, p0, mPrivateFlags:I

    .line 15133
    iget v7, p0, mPrivateFlags:I

    and-int/lit16 v7, v7, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_ca

    .line 15134
    invoke-virtual {p0, v1}, dispatchDraw(Landroid/graphics/Canvas;)V

    .line 15135
    iget-object v7, p0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v7, :cond_c6

    iget-object v7, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c6

    .line 15136
    iget-object v7, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 15141
    :cond_c6
    :goto_c6
    invoke-direct {p0, v1}, drawAccessibilityFocus(Landroid/graphics/Canvas;)V

    goto :goto_6a

    .line 15139
    :cond_ca
    invoke-virtual {p0, v1}, draw(Landroid/graphics/Canvas;)V
    :try_end_cd
    .catchall {:try_start_8e .. :try_end_cd} :catchall_86

    goto :goto_c6

    .line 15148
    .end local v1    # "canvas":Landroid/view/HardwareCanvas;
    .end local v2    # "height":I
    .end local v3    # "layer":Landroid/view/HardwareLayer;
    .end local v4    # "layerType":I
    .end local v6    # "width":I
    :cond_ce
    iget v7, p0, mPrivateFlags:I

    or-int/2addr v7, v11

    iput v7, p0, mPrivateFlags:I

    .line 15149
    iget v7, p0, mPrivateFlags:I

    and-int/2addr v7, v10

    iput v7, p0, mPrivateFlags:I

    goto/16 :goto_f
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8373
    .local p1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 7832
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, addFocusables(Ljava/util/ArrayList;II)V

    .line 7833
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 7853
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_3

    .line 7864
    :cond_2
    :goto_2
    return-void

    .line 7856
    :cond_3
    invoke-virtual {p0}, isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7859
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7863
    :cond_1a
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addImageFilterClipRect(Landroid/graphics/Rect;F)V
    .registers 5
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "cornerRadius"    # F

    .prologue
    .line 4545
    if-eqz p1, :cond_1c

    .line 4546
    new-instance v0, Landroid/view/View$ClipRect;

    invoke-direct {v0, p0}, Landroid/view/View$ClipRect;-><init>(Landroid/view/View;)V

    .line 4547
    .local v0, "c":Landroid/view/View$ClipRect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/view/View$ClipRect;->mClipRect:Landroid/graphics/Rect;

    .line 4548
    iput p2, v0, Landroid/view/View$ClipRect;->mCornerRadius:F

    .line 4549
    iget-object v1, p0, mRenderNodeImageFilterClipRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4550
    invoke-virtual {p0}, syncImageFilterClipRects()V

    .line 4551
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, invalidate(Z)V

    .line 4554
    .end local v0    # "c":Landroid/view/View$ClipRect;
    :cond_1c
    return-void
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 5098
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 5099
    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_12

    .line 5100
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5103
    :cond_12
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 5104
    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 5065
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 5066
    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_12

    .line 5067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$102(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 5069
    :cond_12
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 5070
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5072
    :cond_23
    return-void
.end method

.method public addSmartClipTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .registers 3
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 22274
    if-nez p1, :cond_4

    .line 22275
    const/4 v0, 0x0

    .line 22284
    :goto_3
    return v0

    .line 22278
    :cond_4
    iget-object v0, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_f

    .line 22279
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 22282
    :cond_f
    iget-object v0, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 22284
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x200000

    .line 7917
    iget v0, p0, mViewFlags:I

    .line 7919
    .local v0, "viewFlags":I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_e

    and-int v1, v0, v3

    if-ne v1, v3, :cond_15

    :cond_e
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_15

    .line 7921
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7923
    :cond_15
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .registers 2

    .prologue
    .line 20944
    iget-object v0, p0, mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_b

    .line 20945
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 20947
    :cond_b
    iget-object v0, p0, mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5686
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_29

    .line 5687
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 5689
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5690
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5691
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5692
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5694
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_29
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .registers 18
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    .line 19534
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .line 19535
    .local v1, "r":Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 19536
    .local v13, "db":Landroid/graphics/Rect;
    iget-object v12, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 19537
    .local v12, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_6d

    if-eqz v12, :cond_6d

    .line 19538
    invoke-virtual {p0}, getRight()I

    move-result v2

    invoke-virtual {p0}, getLeft()I

    move-result v3

    sub-int v9, v2, v3

    .line 19539
    .local v9, "w":I
    invoke-virtual {p0}, getBottom()I

    move-result v2

    invoke-virtual {p0}, getTop()I

    move-result v3

    sub-int v5, v2, v3

    .line 19540
    .local v5, "h":I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_2f

    .line 19542
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 19544
    :cond_2f
    iget v2, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v9, :cond_3c

    .line 19546
    iget v2, v13, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 19548
    :cond_3c
    iget v2, v13, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_4a

    .line 19550
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sget-object v11, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 19552
    :cond_4a
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_57

    .line 19554
    const/4 v2, 0x0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 19556
    :cond_57
    iget-object v14, v12, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 19557
    .local v14, "location":[I
    invoke-virtual {p0, v14}, getLocationInWindow([I)V

    .line 19558
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 19559
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 19563
    .end local v5    # "h":I
    .end local v9    # "w":I
    .end local v14    # "location":[I
    :goto_6c
    return-void

    .line 19561
    :cond_6d
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_6c
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    .line 13989
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_7

    .line 13990
    iput-object p1, p0, mParent:Landroid/view/ViewParent;

    .line 13997
    :goto_6
    return-void

    .line 13991
    :cond_7
    if-nez p1, :cond_d

    .line 13992
    const/4 v0, 0x0

    iput-object v0, p0, mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 13994
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12450
    iget-object v1, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_10

    iget-object v1, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v1, v0}, awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected awakenScrollBars(I)Z
    .registers 3
    .param p1, "startDelay"    # I

    .prologue
    .line 12502
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .registers 13
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12544
    iget-object v1, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 12546
    .local v1, "scrollCache":Landroid/view/View$ScrollabilityCache;
    if-eqz v1, :cond_a

    iget-boolean v6, v1, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v6, :cond_b

    .line 12590
    :cond_a
    :goto_a
    return v4

    .line 12550
    :cond_b
    iget-object v6, v1, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_16

    .line 12552
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6, p0}, Landroid/widget/ScrollBarDrawable;-><init>(Landroid/view/View;)V

    iput-object v6, v1, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 12556
    :cond_16
    invoke-virtual {p0}, isHorizontalScrollBarEnabled()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {p0}, isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 12558
    :cond_22
    if-eqz p2, :cond_27

    .line 12560
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 12563
    :cond_27
    iget v4, v1, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_33

    .line 12567
    const/16 v0, 0x2ee

    .line 12568
    .local v0, "KEY_REPEAT_FIRST_DELAY":I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 12573
    .end local v0    # "KEY_REPEAT_FIRST_DELAY":I
    :cond_33
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v2, v6, v8

    .line 12574
    .local v2, "fadeStartTime":J
    iput-wide v2, v1, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 12575
    iput v5, v1, Landroid/view/View$ScrollabilityCache;->state:I

    .line 12578
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_54

    .line 12579
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12581
    iget-boolean v4, p0, mTwScrollingByScrollbar:Z

    if-nez v4, :cond_54

    .line 12582
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_54
    move v4, v5

    .line 12587
    goto :goto_a
.end method

.method public bringToFront()V
    .registers 2

    .prologue
    .line 10763
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 10764
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 10766
    :cond_9
    return-void
.end method

.method public buildDrawingCache()V
    .registers 2

    .prologue
    .line 15278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, buildDrawingCache(Z)V

    .line 15279
    return-void
.end method

.method public buildDrawingCache(Z)V
    .registers 25
    .param p1, "autoScale"    # Z

    .prologue
    .line 15305
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v20, v0

    const v21, 0x8000

    and-int v20, v20, v21

    if-eqz v20, :cond_17

    if-eqz p1, :cond_ea

    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_e9

    .line 15307
    :cond_17
    :goto_17
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCachingFailed:Z

    .line 15309
    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mLeft:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    .line 15310
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    .line 15312
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15313
    .local v2, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v2, :cond_f4

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f4

    const/16 v17, 0x1

    .line 15315
    .local v17, "scalingRequired":Z
    :goto_49
    if-eqz p1, :cond_71

    if-eqz v17, :cond_71

    .line 15316
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 15317
    int-to-float v0, v10

    move/from16 v20, v0

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v10, v0

    .line 15320
    :cond_71
    move-object/from16 v0, p0

    iget v6, v0, mDrawingCacheBackgroundColor:I

    .line 15321
    .local v6, "drawingCacheBackgroundColor":I
    if-nez v6, :cond_7d

    invoke-virtual/range {p0 .. p0}, isOpaque()Z

    move-result v20

    if-eqz v20, :cond_f8

    :cond_7d
    const/4 v11, 0x1

    .line 15322
    .local v11, "opaque":Z
    :goto_7e
    if-eqz v2, :cond_fa

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move/from16 v20, v0

    if-eqz v20, :cond_fa

    const/16 v18, 0x1

    .line 15324
    .local v18, "use32BitCache":Z
    :goto_88
    mul-int v21, v19, v10

    if-eqz v11, :cond_fd

    if-nez v18, :cond_fd

    const/16 v20, 0x2

    :goto_90
    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v12, v0

    .line 15325
    .local v12, "projectedBitmapSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .line 15327
    .local v8, "drawingCacheSize":J
    if-lez v19, :cond_ae

    if-lez v10, :cond_ae

    cmp-long v20, v12, v8

    if-lez v20, :cond_100

    .line 15328
    :cond_ae
    if-lez v19, :cond_de

    if-lez v10, :cond_de

    .line 15329
    const-string v20, "View"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "View too large to fit into drawing cache, needs "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes, only "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " available"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15333
    :cond_de
    invoke-virtual/range {p0 .. p0}, destroyDrawingCache()V

    .line 15334
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCachingFailed:Z

    .line 15454
    .end local v2    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v6    # "drawingCacheBackgroundColor":I
    .end local v8    # "drawingCacheSize":J
    .end local v10    # "height":I
    .end local v11    # "opaque":Z
    .end local v12    # "projectedBitmapSize":J
    .end local v17    # "scalingRequired":Z
    .end local v18    # "use32BitCache":Z
    .end local v19    # "width":I
    :cond_e9
    :goto_e9
    return-void

    .line 15305
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_e9

    goto/16 :goto_17

    .line 15313
    .restart local v2    # "attachInfo":Landroid/view/View$AttachInfo;
    .restart local v10    # "height":I
    .restart local v19    # "width":I
    :cond_f4
    const/16 v17, 0x0

    goto/16 :goto_49

    .line 15321
    .restart local v6    # "drawingCacheBackgroundColor":I
    .restart local v17    # "scalingRequired":Z
    :cond_f8
    const/4 v11, 0x0

    goto :goto_7e

    .line 15322
    .restart local v11    # "opaque":Z
    :cond_fa
    const/16 v18, 0x0

    goto :goto_88

    .line 15324
    .restart local v18    # "use32BitCache":Z
    :cond_fd
    const/16 v20, 0x4

    goto :goto_90

    .line 15338
    .restart local v8    # "drawingCacheSize":J
    .restart local v12    # "projectedBitmapSize":J
    :cond_100
    const/4 v5, 0x1

    .line 15339
    .local v5, "clear":Z
    if-eqz p1, :cond_25c

    move-object/from16 v0, p0

    iget-object v3, v0, mDrawingCache:Landroid/graphics/Bitmap;

    .line 15341
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_107
    if-eqz v3, :cond_11b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_11b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v10, :cond_167

    .line 15343
    :cond_11b
    if-nez v11, :cond_262

    .line 15346
    move-object/from16 v0, p0

    iget v0, v0, mViewFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x180000

    and-int v20, v20, v21

    .line 15351
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15361
    .local v14, "quality":Landroid/graphics/Bitmap$Config;
    :goto_129
    if-eqz v3, :cond_12e

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 15364
    :cond_12e
    :try_start_12e
    move-object/from16 v0, p0

    iget-object v0, v0, mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v10, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 15366
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 15367
    if-eqz p1, :cond_26b

    .line 15368
    move-object/from16 v0, p0

    iput-object v3, v0, mDrawingCache:Landroid/graphics/Bitmap;

    .line 15372
    :goto_159
    if-eqz v11, :cond_164

    if-eqz v18, :cond_164

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_164
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12e .. :try_end_164} :catch_271
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_12e .. :try_end_164} :catch_28f

    .line 15394
    :cond_164
    if-eqz v6, :cond_2ad

    const/4 v5, 0x1

    .line 15398
    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_167
    :goto_167
    if-eqz v2, :cond_2b0

    .line 15399
    iget-object v4, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 15400
    .local v4, "canvas":Landroid/graphics/Canvas;
    if-nez v4, :cond_172

    .line 15401
    new-instance v4, Landroid/graphics/Canvas;

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 15403
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_172
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 15408
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 15414
    :goto_17b
    if-eqz v5, :cond_180

    .line 15415
    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 15418
    :cond_180
    invoke-virtual/range {p0 .. p0}, computeScroll()V

    .line 15419
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 15421
    .local v15, "restoreCount":I
    if-eqz p1, :cond_196

    if-eqz v17, :cond_196

    .line 15422
    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    .line 15423
    .local v16, "scale":F
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 15426
    .end local v16    # "scale":F
    :cond_196
    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15428
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags:I

    .line 15429
    move-object/from16 v0, p0

    iget-object v0, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1e9

    move-object/from16 v0, p0

    iget-object v0, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e9

    move-object/from16 v0, p0

    iget v0, v0, mLayerType:I

    move/from16 v20, v0

    if-eqz v20, :cond_1fa

    .line 15431
    :cond_1e9
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v20, v0

    const v21, 0x8000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags:I

    .line 15435
    :cond_1fa
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2b7

    .line 15436
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x600001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mPrivateFlags:I

    .line 15437
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, dispatchDraw(Landroid/graphics/Canvas;)V

    .line 15438
    move-object/from16 v0, p0

    iget-object v0, v0, mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    if-eqz v20, :cond_247

    move-object/from16 v0, p0

    iget-object v0, v0, mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_247

    .line 15439
    move-object/from16 v0, p0

    iget-object v0, v0, mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 15444
    :cond_247
    :goto_247
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, drawAccessibilityFocus(Landroid/graphics/Canvas;)V

    .line 15446
    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15447
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 15449
    if-eqz v2, :cond_e9

    .line 15451
    iput-object v4, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_e9

    .line 15339
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v15    # "restoreCount":I
    :cond_25c
    move-object/from16 v0, p0

    iget-object v3, v0, mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto/16 :goto_107

    .line 15357
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_262
    if-eqz v18, :cond_268

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :goto_266
    goto/16 :goto_129

    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_268
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_266

    .line 15370
    .restart local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_26b
    :try_start_26b
    move-object/from16 v0, p0

    iput-object v3, v0, mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_26f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26b .. :try_end_26f} :catch_271
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_26b .. :try_end_26f} :catch_28f

    goto/16 :goto_159

    .line 15373
    :catch_271
    move-exception v7

    .line 15377
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_286

    .line 15378
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mDrawingCache:Landroid/graphics/Bitmap;

    .line 15382
    :goto_27c
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCachingFailed:Z

    goto/16 :goto_e9

    .line 15380
    :cond_286
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_27c

    .line 15384
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    :catch_28f
    move-exception v7

    .line 15385
    .local v7, "e":Ljava/lang/NegativeArraySizeException;
    if-eqz p1, :cond_2a4

    .line 15386
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mDrawingCache:Landroid/graphics/Bitmap;

    .line 15390
    :goto_29a
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCachingFailed:Z

    goto/16 :goto_e9

    .line 15388
    :cond_2a4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_29a

    .line 15394
    .end local v7    # "e":Ljava/lang/NegativeArraySizeException;
    :cond_2ad
    const/4 v5, 0x0

    goto/16 :goto_167

    .line 15411
    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_2b0
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    goto/16 :goto_17b

    .line 15442
    .restart local v15    # "restoreCount":I
    :cond_2b7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, draw(Landroid/graphics/Canvas;)V

    goto :goto_247
.end method

.method public buildLayer()V
    .registers 4

    .prologue
    .line 14938
    iget v1, p0, mLayerType:I

    if-nez v1, :cond_5

    .line 14960
    :cond_4
    :goto_4
    return-void

    .line 14940
    :cond_5
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14941
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_11

    .line 14942
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This view must be attached to a window first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14945
    :cond_11
    invoke-virtual {p0}, getWidth()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, getHeight()I

    move-result v1

    if-eqz v1, :cond_4

    .line 14949
    iget v1, p0, mLayerType:I

    packed-switch v1, :pswitch_data_40

    goto :goto_4

    .line 14957
    :pswitch_23
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, buildDrawingCache(Z)V

    goto :goto_4

    .line 14951
    :pswitch_28
    invoke-direct {p0}, updateDisplayListIfDirty()V

    .line 14952
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_4

    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14953
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v2, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->buildLayer(Landroid/view/RenderNode;)V

    goto :goto_4

    .line 14949
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_23
        :pswitch_28
    .end packed-switch
.end method

.method public callOnClick()Z
    .registers 3

    .prologue
    .line 5216
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5217
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_f

    .line 5218
    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 5219
    const/4 v1, 0x1

    .line 5221
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method canAcceptDrag()Z
    .registers 2

    .prologue
    .line 19504
    iget v0, p0, mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public canHaveDisplayList()Z
    .registers 2

    .prologue
    .line 15080
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public canResolveLayoutDirection()Z
    .registers 5

    .prologue
    .line 14206
    invoke-virtual {p0}, getRawLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 14219
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 14208
    :pswitch_9
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_37

    .line 14210
    :try_start_d
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveLayoutDirection()Z
    :try_end_12
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_12} :catch_14

    move-result v1

    goto :goto_8

    .line 14211
    :catch_14
    move-exception v0

    .line 14212
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14216
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_37
    const/4 v1, 0x0

    goto :goto_8

    .line 14206
    nop

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method public canResolveTextAlignment()Z
    .registers 5

    .prologue
    .line 20464
    invoke-virtual {p0}, getRawTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 20477
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 20466
    :pswitch_9
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_37

    .line 20468
    :try_start_d
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveTextAlignment()Z
    :try_end_12
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_12} :catch_14

    move-result v1

    goto :goto_8

    .line 20469
    :catch_14
    move-exception v0

    .line 20470
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20474
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_37
    const/4 v1, 0x0

    goto :goto_8

    .line 20464
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public canResolveTextDirection()Z
    .registers 5

    .prologue
    .line 20227
    invoke-virtual {p0}, getRawTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 20240
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 20229
    :pswitch_9
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_37

    .line 20231
    :try_start_d
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveTextDirection()Z
    :try_end_12
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_12} :catch_14

    move-result v1

    goto :goto_8

    .line 20232
    :catch_14
    move-exception v0

    .line 20233
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20237
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_37
    const/4 v1, 0x0

    goto :goto_8

    .line 20227
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public canScrollHorizontally(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 13721
    invoke-virtual {p0}, computeHorizontalScrollOffset()I

    move-result v0

    .line 13722
    .local v0, "offset":I
    invoke-virtual {p0}, computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 13723
    .local v1, "range":I
    if-nez v1, :cond_14

    move v2, v3

    .line 13727
    :cond_13
    :goto_13
    return v2

    .line 13724
    :cond_14
    if-gez p1, :cond_1a

    .line 13725
    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    .line 13727
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method

.method public canScrollVertically(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 13738
    invoke-virtual {p0}, computeVerticalScrollOffset()I

    move-result v0

    .line 13739
    .local v0, "offset":I
    invoke-virtual {p0}, computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 13740
    .local v1, "range":I
    if-nez v1, :cond_14

    move v2, v3

    .line 13744
    :cond_13
    :goto_13
    return v2

    .line 13741
    :cond_14
    if-gez p1, :cond_1a

    .line 13742
    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    .line 13744
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method

.method public cancelLongPress()V
    .registers 1

    .prologue
    .line 10519
    invoke-direct {p0}, removeLongPressCallback()V

    .line 10526
    invoke-direct {p0}, removeTapCallback()V

    .line 10527
    return-void
.end method

.method public final cancelPendingInputEvents()V
    .registers 1

    .prologue
    .line 14581
    invoke-virtual {p0}, dispatchCancelPendingInputEvents()V

    .line 14582
    return-void
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20536
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 20537
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20539
    :cond_9
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9834
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccessibilityFocus()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 7988
    invoke-virtual {p0}, clearAccessibilityFocusNoCallbacks()V

    .line 7991
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 7992
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_19

    .line 7993
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 7994
    .local v0, "focusHost":Landroid/view/View;
    if-eqz v0, :cond_19

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 7995
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7998
    .end local v0    # "focusHost":Landroid/view/View;
    :cond_19
    return-void
.end method

.method clearAccessibilityFocusNoCallbacks()V
    .registers 3

    .prologue
    .line 8032
    iget v0, p0, mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 8033
    iget v0, p0, mPrivateFlags2:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 8034
    invoke-virtual {p0}, invalidate()V

    .line 8035
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, sendAccessibilityEvent(I)V

    .line 8037
    :cond_17
    return-void
.end method

.method public clearAllSmartClipTag()Z
    .registers 2

    .prologue
    .line 22310
    const/4 v0, 0x0

    iput-object v0, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 22311
    const/4 v0, 0x1

    return v0
.end method

.method public clearAnimation()V
    .registers 2

    .prologue
    .line 18918
    iget-object v0, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 18919
    iget-object v0, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 18921
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    .line 18922
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 18923
    return-void
.end method

.method public clearFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5496
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, clearFocusInternal(Landroid/view/View;ZZ)V

    .line 5497
    return-void
.end method

.method clearFocusInternal(Landroid/view/View;ZZ)V
    .registers 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "propagate"    # Z
    .param p3, "refocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5509
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2c

    .line 5510
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, mPrivateFlags:I

    .line 5512
    if-eqz p2, :cond_18

    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_18

    .line 5513
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 5516
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 5517
    invoke-virtual {p0}, refreshDrawableState()V

    .line 5519
    if-eqz p2, :cond_2c

    if-eqz p3, :cond_29

    invoke-virtual {p0}, rootViewRequestFocus()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 5520
    :cond_29
    invoke-virtual {p0, p0}, notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5523
    :cond_2c
    return-void
.end method

.method public clearImageFilterClipRect()V
    .registers 2

    .prologue
    .line 4501
    iget-object v0, p0, mRenderNodeImageFilterClipRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4502
    invoke-virtual {p0}, syncImageFilterClipRects()V

    .line 4503
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 4504
    return-void
.end method

.method computeClickPointInScreenForAccessibility(Landroid/graphics/Region;Landroid/graphics/Point;)Z
    .registers 24
    .param p1, "interactiveRegion"    # Landroid/graphics/Region;
    .param p2, "outPoint"    # Landroid/graphics/Point;

    .prologue
    .line 6265
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_8

    .line 6266
    const/4 v3, 0x0

    .line 6350
    :goto_7
    return v3

    .line 6270
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v3, :cond_12

    .line 6271
    const/4 v3, 0x0

    goto :goto_7

    .line 6274
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6275
    .local v8, "bounds":Landroid/graphics/RectF;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6276
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v15, v3, Landroid/view/View$AttachInfo;->mTmpRectList:Ljava/util/List;

    .line 6277
    .local v15, "intersections":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 6279
    move-object/from16 v0, p0

    iget-object v3, v0, mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4f

    .line 6280
    move-object/from16 v0, p0

    iget-object v0, v0, mParent:Landroid/view/ViewParent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/ViewGroup;

    .line 6281
    .local v16, "parentGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8, v15}, Landroid/view/ViewGroup;->translateBoundsAndIntersectionsInWindowCoordinates(Landroid/view/View;Landroid/graphics/RectF;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 6283
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 6284
    const/4 v3, 0x0

    goto :goto_7

    .line 6289
    .end local v16    # "parentGroup":Landroid/view/ViewGroup;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 6290
    .local v10, "dx":I
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v11, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 6291
    .local v11, "dy":I
    int-to-float v3, v10

    int-to-float v4, v11

    invoke-virtual {v8, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 6292
    int-to-float v3, v10

    int-to-float v4, v11

    invoke-static {v15, v3, v4}, offsetRects(Ljava/util/List;FF)V

    .line 6294
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7e

    if-nez p1, :cond_7e

    .line 6295
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 6350
    :goto_7c
    const/4 v3, 0x1

    goto :goto_7

    .line 6299
    :cond_7e
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 6300
    .local v2, "region":Landroid/graphics/Region;
    iget v3, v8, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v8, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 6303
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    .line 6304
    .local v14, "intersectionCount":I
    add-int/lit8 v12, v14, -0x1

    .local v12, "i":I
    :goto_98
    if-ltz v12, :cond_b4

    .line 6305
    invoke-interface {v15, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/RectF;

    .line 6306
    .local v13, "intersection":Landroid/graphics/RectF;
    iget v3, v13, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v13, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v13, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 6304
    add-int/lit8 v12, v12, -0x1

    goto :goto_98

    .line 6312
    .end local v13    # "intersection":Landroid/graphics/RectF;
    :cond_b4
    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 6313
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 6319
    :cond_bd
    if-eqz p1, :cond_c6

    .line 6320
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6324
    :cond_c6
    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 6325
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 6329
    :cond_cf
    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 6330
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v3, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 6331
    .local v20, "regionBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 6332
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 6333
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 6337
    .end local v20    # "regionBounds":Landroid/graphics/Rect;
    :cond_f2
    invoke-virtual {v2}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v17

    .line 6338
    .local v17, "path":Landroid/graphics/Path;
    new-instance v18, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 6339
    .local v18, "pathMeasure":Landroid/graphics/PathMeasure;
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 6342
    .local v9, "coordinates":[F
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    mul-float v19, v3, v4

    .line 6343
    .local v19, "point":F
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v3

    if-nez v3, :cond_11d

    .line 6344
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 6347
    :cond_11d
    const/4 v3, 0x0

    aget v3, v9, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_7c
.end method

.method protected computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 6999
    iget v2, p0, mViewFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_19

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_19

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_21

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-nez v2, :cond_21

    .line 7003
    :cond_19
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7004
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7005
    const/4 v1, 0x1

    .line 7015
    :goto_20
    return v1

    .line 7009
    :cond_21
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 7010
    .local v0, "overscan":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7011
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 7012
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 7013
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 7014
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_20
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 13650
    invoke-virtual {p0}, getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 13629
    iget v0, p0, mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 13608
    invoke-virtual {p0}, getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .registers 5

    .prologue
    const/high16 v3, 0x3000000

    .line 12897
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_32

    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_32

    .line 12898
    iget v1, p0, mPrivateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 12903
    :goto_16
    iget v0, p0, mViewFlags:I

    .line 12904
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_20

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2a

    :cond_20
    and-int v1, v0, v3

    if-eqz v1, :cond_2a

    and-int v1, v0, v3

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_3b

    .line 12907
    :cond_2a
    iget v1, p0, mPrivateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 12911
    :goto_31
    return-void

    .line 12900
    .end local v0    # "flags":I
    :cond_32
    iget v1, p0, mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    goto :goto_16

    .line 12909
    .restart local v0    # "flags":I
    :cond_3b
    iget v1, p0, mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    goto :goto_31
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .prologue
    .line 17684
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_6
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 13239
    return-void
.end method

.method public computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "in"    # Landroid/view/WindowInsets;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 7030
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_13

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_1f

    .line 7033
    :cond_13
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7034
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 7037
    .end local p1    # "in":Landroid/view/WindowInsets;
    :goto_1e
    return-object p1

    .line 7036
    .restart local p1    # "in":Landroid/view/WindowInsets;
    :cond_1f
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1e
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 13711
    invoke-virtual {p0}, getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 13690
    iget v0, p0, mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 13669
    invoke-virtual {p0}, getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .prologue
    .line 5929
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 5930
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5932
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_a
.end method

.method createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .prologue
    .line 5940
    invoke-virtual {p0}, getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 5941
    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_c

    .line 5942
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5946
    :goto_b
    return-object v0

    .line 5944
    :cond_c
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5945
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v0}, onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_b
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 9848
    invoke-virtual {p0}, getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, p1

    .line 9852
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 9854
    invoke-virtual {p0, p1}, onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 9855
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 9856
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_1a

    .line 9857
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_1a
    move-object v2, p1

    .line 9862
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 9864
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_2a

    .line 9865
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 9867
    :cond_2a
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    .prologue
    .line 15461
    iget v9, p0, mRight:I

    iget v10, p0, mLeft:I

    sub-int v8, v9, v10

    .line 15462
    .local v8, "width":I
    iget v9, p0, mBottom:I

    iget v10, p0, mTop:I

    sub-int v4, v9, v10

    .line 15464
    .local v4, "height":I
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15465
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_34

    iget v7, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 15466
    .local v7, "scale":F
    :goto_12
    int-to-float v9, v8

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v8, v9

    .line 15467
    int-to-float v9, v4

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 15469
    iget-object v9, p0, mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    if-lez v8, :cond_37

    .end local v8    # "width":I
    :goto_26
    if-lez v4, :cond_39

    .end local v4    # "height":I
    :goto_28
    invoke-static {v9, v8, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 15471
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3b

    .line 15472
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9

    .line 15465
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .restart local v4    # "height":I
    .restart local v8    # "width":I
    :cond_34
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_12

    .line 15469
    .restart local v7    # "scale":F
    :cond_37
    const/4 v8, 0x1

    goto :goto_26

    .end local v8    # "width":I
    :cond_39
    const/4 v4, 0x1

    goto :goto_28

    .line 15475
    .end local v4    # "height":I
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3b
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 15476
    .local v5, "resources":Landroid/content/res/Resources;
    if-eqz v5, :cond_4a

    .line 15477
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 15481
    :cond_4a
    if-eqz v0, :cond_b3

    .line 15482
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 15483
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-nez v2, :cond_55

    .line 15484
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 15486
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_55
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 15491
    const/4 v9, 0x0

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 15497
    :goto_5b
    const/high16 v9, -0x1000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_63

    .line 15498
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 15501
    :cond_63
    invoke-virtual {p0}, computeScroll()V

    .line 15502
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 15503
    .local v6, "restoreCount":I
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 15504
    iget v9, p0, mScrollX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, mScrollY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15507
    iget v3, p0, mPrivateFlags:I

    .line 15508
    .local v3, "flags":I
    iget v9, p0, mPrivateFlags:I

    const v10, -0x600001

    and-int/2addr v9, v10

    iput v9, p0, mPrivateFlags:I

    .line 15511
    iget v9, p0, mPrivateFlags:I

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_b9

    .line 15512
    invoke-virtual {p0, v2}, dispatchDraw(Landroid/graphics/Canvas;)V

    .line 15513
    iget-object v9, p0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v9, :cond_a2

    iget-object v9, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v9}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a2

    .line 15514
    iget-object v9, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v9}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 15519
    :cond_a2
    :goto_a2
    invoke-direct {p0, v2}, drawAccessibilityFocus(Landroid/graphics/Canvas;)V

    .line 15521
    iput v3, p0, mPrivateFlags:I

    .line 15523
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15524
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 15526
    if-eqz v0, :cond_b2

    .line 15528
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 15531
    :cond_b2
    return-object v1

    .line 15494
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "flags":I
    .end local v6    # "restoreCount":I
    :cond_b3
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    goto :goto_5b

    .line 15517
    .restart local v3    # "flags":I
    .restart local v6    # "restoreCount":I
    :cond_b9
    invoke-virtual {p0, v2}, draw(Landroid/graphics/Canvas;)V

    goto :goto_a2
.end method

.method protected damageInParent()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 12803
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12804
    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    .line 12805
    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    .line 12806
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 12807
    .local v2, "r":Landroid/graphics/Rect;
    iget v3, p0, mRight:I

    iget v4, p0, mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, mBottom:I

    iget v5, p0, mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 12808
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26

    .line 12809
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0, v2}, Landroid/view/ViewGroup;->damageChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12814
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_25
    :goto_25
    return-void

    .line 12811
    .restart local v2    # "r":Landroid/graphics/Rect;
    :cond_26
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_25
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 18388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, debug(I)V

    .line 18389
    return-void
.end method

.method protected debug(I)V
    .registers 7
    .param p1, "depth"    # I

    .prologue
    .line 18401
    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 18403
    .local v1, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18404
    invoke-virtual {p0}, getId()I

    move-result v0

    .line 18405
    .local v0, "id":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_41

    .line 18406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18408
    :cond_41
    invoke-virtual {p0}, getTag()Ljava/lang/Object;

    move-result-object v2

    .line 18409
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_64

    .line 18410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18412
    :cond_64
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18414
    iget v3, p0, mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8b

    .line 18415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18416
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18419
    :cond_8b
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 18420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18423
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18425
    iget v3, p0, mPaddingLeft:I

    if-nez v3, :cond_101

    iget v3, p0, mPaddingTop:I

    if-nez v3, :cond_101

    iget v3, p0, mPaddingRight:I

    if-nez v3, :cond_101

    iget v3, p0, mPaddingBottom:I

    if-eqz v3, :cond_14f

    .line 18427
    :cond_101
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 18428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18430
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18433
    :cond_14f
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 18434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18436
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18438
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 18439
    iget-object v3, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_22e

    .line 18440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18444
    :goto_199
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18446
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 18447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mViewFlags:I

    invoke-static {v4}, printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18450
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18452
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 18453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mPrivateFlags:I

    invoke-static {v4}, printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18456
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18457
    return-void

    .line 18442
    :cond_22e
    iget-object v3, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_199
.end method

.method public destroyDrawingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15235
    iget-object v0, p0, mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 15236
    iget-object v0, p0, mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 15237
    iput-object v1, p0, mDrawingCache:Landroid/graphics/Bitmap;

    .line 15239
    :cond_c
    iget-object v0, p0, mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 15240
    iget-object v0, p0, mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 15241
    iput-object v1, p0, mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 15243
    :cond_17
    return-void
.end method

.method protected destroyHardwareResources()V
    .registers 1

    .prologue
    .line 14988
    invoke-direct {p0}, resetDisplayList()V

    .line 14989
    return-void
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 6983
    :try_start_0
    iget v0, p0, mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mPrivateFlags3:I

    .line 6984
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_1f

    .line 6985
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_2a

    move-result-object v0

    .line 6990
    iget v1, p0, mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, mPrivateFlags3:I

    :goto_1e
    return-object v0

    .line 6987
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1}, onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2a

    move-result-object v0

    .line 6990
    iget v1, p0, mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, mPrivateFlags3:I

    goto :goto_1e

    :catchall_2a
    move-exception v0

    iget v1, p0, mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, mPrivateFlags3:I

    throw v0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 10
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x0

    .line 14481
    iput-object p1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14482
    iget-object v5, p0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v5, :cond_10

    .line 14483
    iget-object v5, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v5}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/ViewGroup;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 14485
    :cond_10
    iget v5, p0, mWindowAttachCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, mWindowAttachCount:I

    .line 14487
    iget v5, p0, mPrivateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, mPrivateFlags:I

    .line 14488
    iget-object v5, p0, mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_29

    .line 14489
    iget-object v5, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 14490
    iput-object v3, p0, mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 14492
    :cond_29
    iget v5, p0, mPrivateFlags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3e

    .line 14493
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14494
    iget v5, p0, mPrivateFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, mPrivateFlags:I

    .line 14496
    :cond_3e
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p0, v5, p2}, performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 14497
    invoke-virtual {p0}, onAttachedToWindow()V

    .line 14499
    iget-object v1, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 14500
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_4e

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 14502
    .local v3, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_4e
    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6a

    .line 14507
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 14508
    .local v2, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_5a

    .line 14512
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    :cond_6a
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 14513
    .local v4, "vis":I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_73

    .line 14514
    invoke-virtual {p0, v4}, onWindowVisibilityChanged(I)V

    .line 14516
    :cond_73
    iget v5, p0, mPrivateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_7c

    .line 14518
    invoke-virtual {p0}, refreshDrawableState()V

    .line 14520
    :cond_7c
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, needGlobalAttributesUpdate(Z)V

    .line 14521
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .registers 4

    .prologue
    .line 14589
    iget v0, p0, mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, mPrivateFlags3:I

    .line 14590
    invoke-virtual {p0}, onCancelPendingInputEvents()V

    .line 14591
    iget v0, p0, mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_38

    .line 14592
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCancelPendingInputEvents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14595
    :cond_38
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 3
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 9470
    invoke-virtual {p0, p1, p2}, performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 9471
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 9449
    invoke-virtual {p0, p1}, onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9450
    return-void
.end method

.method public dispatchCoverStateChanged(Z)V
    .registers 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 19092
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 14524
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14525
    .local v1, "info":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_e

    .line 14526
    iget v5, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 14527
    .local v5, "vis":I
    if-eq v5, v7, :cond_e

    .line 14528
    invoke-virtual {p0, v7}, onWindowVisibilityChanged(I)V

    .line 14532
    .end local v5    # "vis":I
    :cond_e
    invoke-virtual {p0}, onDetachedFromWindow()V

    .line 14533
    invoke-virtual {p0}, onDetachedFromWindowInternal()V

    .line 14535
    iget-object v2, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 14536
    .local v2, "li":Landroid/view/View$ListenerInfo;
    if-eqz v2, :cond_38

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 14538
    .local v4, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :goto_1c
    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3a

    .line 14543
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    .line 14544
    .local v3, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v3, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_28

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    .end local v4    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_38
    move-object v4, v6

    .line 14536
    goto :goto_1c

    .line 14548
    .restart local v4    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_3a
    iget v7, p0, mPrivateFlags:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_50

    .line 14549
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14550
    iget v7, p0, mPrivateFlags:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, p0, mPrivateFlags:I

    .line 14553
    :cond_50
    iput-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14554
    iget-object v6, p0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v6, :cond_5f

    .line 14555
    iget-object v6, p0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v6}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->dispatchDetachedFromWindow()V

    .line 14557
    :cond_5f
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .prologue
    .line 9298
    invoke-virtual {p0, p1}, onDisplayHint(I)V

    .line 9299
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 19494
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 19496
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$800(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget v1, p0, mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$800(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 19498
    const/4 v1, 0x1

    .line 19500
    :goto_1b
    return v1

    :cond_1c
    invoke-virtual {p0, p1}, onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 10835
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 8763
    invoke-virtual {p0}, onFinishTemporaryDetach()V

    .line 8764
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9168
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9047
    iget-object v4, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_b

    .line 9048
    iget-object v4, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 9051
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 9052
    .local v1, "source":I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_40

    .line 9053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 9054
    .local v0, "action":I
    const/16 v4, 0x9

    if-eq v0, v4, :cond_22

    const/4 v4, 0x7

    if-eq v0, v4, :cond_22

    const/16 v4, 0xa

    if-ne v0, v4, :cond_29

    .line 9057
    :cond_22
    invoke-virtual {p0, p1}, dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 9074
    .end local v0    # "action":I
    :cond_28
    :goto_28
    return v2

    .line 9060
    .restart local v0    # "action":I
    :cond_29
    invoke-virtual {p0, p1}, dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 9067
    .end local v0    # "action":I
    :cond_2f
    invoke-direct {p0, p1}, dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 9071
    iget-object v2, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_3e

    .line 9072
    iget-object v2, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3e
    move v2, v3

    .line 9074
    goto :goto_28

    .line 9063
    :cond_40
    invoke-virtual {p0, p1}, dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_28
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9154
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGetDisplayList()V
    .registers 1

    .prologue
    .line 15069
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9117
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 9119
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_17

    # getter for: Landroid/view/View$ListenerInfo;->mOnAirButtonHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_17

    iget v1, p0, mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_17

    .line 9121
    # getter for: Landroid/view/View$ListenerInfo;->mOnAirButtonHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 9124
    :cond_17
    if-eqz v0, :cond_31

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_31

    iget v1, p0, mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_31

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 9127
    const/4 v1, 0x1

    .line 9130
    :goto_30
    return v1

    :cond_31
    invoke-virtual {p0, p1}, onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_30
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8816
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_b

    .line 8817
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 8822
    :cond_b
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 8823
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_2b

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget v1, p0, mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_2b

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    .line 8836
    :goto_2a
    return v1

    .line 8828
    :cond_2b
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3b

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_33
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    move v1, v2

    .line 8830
    goto :goto_2a

    .line 8828
    :cond_3b
    const/4 v1, 0x0

    goto :goto_33

    .line 8833
    :cond_3d
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_46

    .line 8834
    iget-object v1, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_46
    move v1, v3

    .line 8836
    goto :goto_2a
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8802
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8777
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8846
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 19973
    invoke-virtual {p0}, isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 19974
    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    .line 19976
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 20010
    invoke-virtual {p0}, isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 20011
    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    .line 20013
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 10
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19920
    invoke-virtual {p0}, isNestedScrollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_49

    .line 19921
    if-nez p1, :cond_10

    if-eqz p2, :cond_4a

    .line 19922
    :cond_10
    const/4 v0, 0x0

    .line 19923
    .local v0, "startX":I
    const/4 v1, 0x0

    .line 19924
    .local v1, "startY":I
    if-eqz p4, :cond_1b

    .line 19925
    invoke-virtual {p0, p4}, getLocationInWindow([I)V

    .line 19926
    aget v0, p4, v2

    .line 19927
    aget v1, p4, v3

    .line 19930
    :cond_1b
    if-nez p3, :cond_28

    .line 19931
    iget-object v4, p0, mTempNestedScrollConsumed:[I

    if-nez v4, :cond_26

    .line 19932
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, mTempNestedScrollConsumed:[I

    .line 19934
    :cond_26
    iget-object p3, p0, mTempNestedScrollConsumed:[I

    .line 19936
    :cond_28
    aput v2, p3, v2

    .line 19937
    aput v2, p3, v3

    .line 19938
    iget-object v4, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v4, p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 19940
    if-eqz p4, :cond_40

    .line 19941
    invoke-virtual {p0, p4}, getLocationInWindow([I)V

    .line 19942
    aget v4, p4, v2

    sub-int/2addr v4, v0

    aput v4, p4, v2

    .line 19943
    aget v4, p4, v3

    sub-int/2addr v4, v1

    aput v4, p4, v3

    .line 19945
    :cond_40
    aget v4, p3, v2

    if-nez v4, :cond_48

    aget v4, p3, v3

    if-eqz v4, :cond_49

    :cond_48
    move v2, v3

    .line 19951
    .end local v0    # "startX":I
    .end local v1    # "startY":I
    :cond_49
    :goto_49
    return v2

    .line 19946
    :cond_4a
    if-eqz p4, :cond_49

    .line 19947
    aput v2, p4, v2

    .line 19948
    aput v2, p4, v3

    goto :goto_49
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 16
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 19872
    invoke-virtual {p0}, isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_40

    .line 19873
    if-nez p1, :cond_14

    if-nez p2, :cond_14

    if-nez p3, :cond_14

    if-eqz p4, :cond_3a

    .line 19874
    :cond_14
    const/4 v6, 0x0

    .line 19875
    .local v6, "startX":I
    const/4 v7, 0x0

    .line 19876
    .local v7, "startY":I
    if-eqz p5, :cond_1f

    .line 19877
    invoke-virtual {p0, p5}, getLocationInWindow([I)V

    .line 19878
    aget v6, p5, v9

    .line 19879
    aget v7, p5, v8

    .line 19882
    :cond_1f
    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V

    .line 19885
    if-eqz p5, :cond_38

    .line 19886
    invoke-virtual {p0, p5}, getLocationInWindow([I)V

    .line 19887
    aget v0, p5, v9

    sub-int/2addr v0, v6

    aput v0, p5, v9

    .line 19888
    aget v0, p5, v8

    sub-int/2addr v0, v7

    aput v0, p5, v8

    :cond_38
    move v0, v8

    .line 19897
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    :goto_39
    return v0

    .line 19891
    :cond_3a
    if-eqz p5, :cond_40

    .line 19893
    aput v9, p5, v9

    .line 19894
    aput v9, p5, v8

    :cond_40
    move v0, v9

    .line 19897
    goto :goto_39
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9186
    invoke-virtual {p0, p1}, dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 9188
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5780
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 5781
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 5783
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5793
    invoke-virtual {p0, p1}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5794
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14706
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 14707
    iget v1, p0, mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 14708
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_29

    .line 14711
    iget v1, p0, mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 14712
    invoke-virtual {p0, v0}, onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14713
    iget v1, p0, mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_29

    .line 14714
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14719
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_29
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14639
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget v1, p0, mViewFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_2e

    .line 14640
    iget v1, p0, mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 14641
    invoke-virtual {p0}, onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 14642
    .local v0, "state":Landroid/os/Parcelable;
    iget v1, p0, mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_27

    .line 14643
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14646
    :cond_27
    if-eqz v0, :cond_2e

    .line 14649
    iget v1, p0, mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14652
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_2e
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .registers 2
    .param p1, "screenState"    # I

    .prologue
    .line 14085
    invoke-virtual {p0, p1}, onScreenStateChanged(I)V

    .line 14086
    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .prologue
    .line 17813
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 7590
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .prologue
    .line 17770
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 1

    .prologue
    .line 8745
    invoke-virtual {p0}, onStartTemporaryDetach()V

    .line 8746
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 19207
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 19208
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_13

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 19209
    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    and-int/lit16 v2, p1, 0x3fff

    invoke-interface {v1, v2}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 19212
    :cond_13
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 8887
    const/4 v4, 0x0

    .line 8890
    .local v4, "result":Z
    if-eqz p1, :cond_67

    iget-boolean v6, p0, mEnablePenGesture:Z

    if-eqz v6, :cond_67

    iget-boolean v6, p0, mDisablePenGestureforfactorytest:Z

    if-nez v6, :cond_67

    .line 8891
    const/4 v2, 0x0

    .line 8892
    .local v2, "isPenEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 8894
    .local v0, "action":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_52

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_52

    .line 8896
    sparse-switch v0, :sswitch_data_bc

    .line 8938
    :cond_24
    :goto_24
    if-ne v2, v5, :cond_67

    .line 8939
    invoke-virtual {p0}, isTextSelectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_39

    .line 8940
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/view/ViewParent;->requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V

    .line 8943
    :cond_39
    sget-boolean v6, IS_DEVICE_H:Z

    if-eqz v6, :cond_61

    .line 8999
    .end local v0    # "action":I
    .end local v2    # "isPenEvent":Z
    :cond_3d
    :goto_3d
    return v5

    .line 8898
    .restart local v0    # "action":I
    .restart local v2    # "isPenEvent":Z
    :sswitch_3e
    iput-boolean v5, p0, isPenSideButton:Z

    .line 8899
    const/4 v2, 0x1

    .line 8900
    goto :goto_24

    .line 8902
    :sswitch_42
    iget-boolean v6, p0, isPenSideButton:Z

    if-eqz v6, :cond_24

    .line 8903
    const/4 v2, 0x1

    goto :goto_24

    .line 8908
    :sswitch_48
    iget-boolean v6, p0, isPenSideButton:Z

    if-eqz v6, :cond_24

    .line 8909
    iput-boolean v8, p0, isPenSideButton:Z

    .line 8910
    const/4 v2, 0x1

    goto :goto_24

    .line 8917
    :sswitch_50
    const/4 v2, 0x1

    goto :goto_24

    .line 8921
    :cond_52
    sparse-switch v0, :sswitch_data_de

    goto :goto_24

    .line 8925
    :sswitch_56
    iput-boolean v8, p0, isPenSideButton:Z

    goto :goto_24

    .line 8928
    :sswitch_59
    iget-boolean v6, p0, isPenSideButton:Z

    if-eqz v6, :cond_24

    .line 8929
    const/4 v2, 0x1

    goto :goto_24

    .line 8934
    :sswitch_5f
    const/4 v2, 0x1

    goto :goto_24

    .line 8946
    :cond_61
    invoke-virtual {p0}, isMultiPenSelectionEnabled()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 8952
    .end local v0    # "action":I
    .end local v2    # "isPenEvent":Z
    :cond_67
    iget-object v6, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v6, :cond_70

    .line 8953
    iget-object v6, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v6, p1, v8}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 8956
    :cond_70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 8957
    .local v1, "actionMasked":I
    if-nez v1, :cond_79

    .line 8959
    invoke-virtual {p0}, stopNestedScroll()V

    .line 8972
    :cond_79
    invoke-virtual {p0, p1}, onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 8974
    iget-object v3, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 8975
    .local v3, "li":Landroid/view/View$ListenerInfo;
    if-eqz v3, :cond_9a

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v3}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v6

    if-eqz v6, :cond_9a

    iget v6, p0, mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_9a

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v3}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-interface {v6, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 8978
    const/4 v4, 0x1

    .line 8981
    :cond_9a
    if-nez v4, :cond_a3

    invoke-virtual {p0, p1}, onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 8982
    const/4 v4, 0x1

    .line 8986
    .end local v3    # "li":Landroid/view/View$ListenerInfo;
    :cond_a3
    if-nez v4, :cond_ae

    iget-object v6, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v6, :cond_ae

    .line 8987
    iget-object v6, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v6, p1, v8}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 8993
    :cond_ae
    if-eq v1, v5, :cond_b7

    const/4 v5, 0x3

    if-eq v1, v5, :cond_b7

    if-nez v1, :cond_ba

    if-nez v4, :cond_ba

    .line 8996
    :cond_b7
    invoke-virtual {p0}, stopNestedScroll()V

    :cond_ba
    move v5, v4

    .line 8999
    goto :goto_3d

    .line 8896
    :sswitch_data_bc
    .sparse-switch
        0x0 -> :sswitch_3e
        0x1 -> :sswitch_48
        0x2 -> :sswitch_42
        0x3 -> :sswitch_48
        0xd3 -> :sswitch_50
        0xd4 -> :sswitch_50
        0xd5 -> :sswitch_50
        0xd6 -> :sswitch_50
    .end sparse-switch

    .line 8921
    :sswitch_data_de
    .sparse-switch
        0x0 -> :sswitch_56
        0x1 -> :sswitch_56
        0x2 -> :sswitch_59
        0x3 -> :sswitch_56
        0xd4 -> :sswitch_5f
        0xd5 -> :sswitch_5f
    .end sparse-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9027
    iget-object v0, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_a

    .line 9028
    iget-object v0, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 9031
    :cond_a
    invoke-virtual {p0, p1}, onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 7756
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9268
    invoke-virtual {p0, p1, p2}, onVisibilityChanged(Landroid/view/View;I)V

    .line 9269
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 9200
    invoke-virtual {p0, p1}, onWindowFocusChanged(Z)V

    .line 9201
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .registers 2
    .param p1, "visible"    # I

    .prologue
    .line 19188
    invoke-virtual {p0, p1}, onWindowSystemUiVisibilityChanged(I)V

    .line 19189
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 9322
    invoke-virtual {p0, p1}, onWindowVisibilityChanged(I)V

    .line 9323
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 16189
    move-object/from16 v0, p0

    iget v0, v0, mPrivateFlags:I

    move/from16 v26, v0

    .line 16190
    .local v26, "privateFlags":I
    const/high16 v2, 0x600000

    and-int v2, v2, v26

    const/high16 v3, 0x400000

    if-ne v2, v3, :cond_70

    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_70

    :cond_1c
    const/4 v11, 0x1

    .line 16192
    .local v11, "dirtyOpaque":Z
    :goto_1d
    const v2, -0x600001

    and-int v2, v2, v26

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, mPrivateFlags:I

    .line 16209
    if-nez v11, :cond_2d

    .line 16210
    invoke-direct/range {p0 .. p1}, drawBackground(Landroid/graphics/Canvas;)V

    .line 16214
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, mViewFlags:I

    move/from16 v35, v0

    .line 16215
    .local v35, "viewFlags":I
    move/from16 v0, v35

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_72

    const/16 v19, 0x1

    .line 16216
    .local v19, "horizontalEdges":Z
    :goto_3b
    move/from16 v0, v35

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_75

    const/16 v34, 0x1

    .line 16217
    .local v34, "verticalEdges":Z
    :goto_43
    if-nez v34, :cond_78

    if-nez v19, :cond_78

    .line 16219
    if-nez v11, :cond_4c

    invoke-virtual/range {p0 .. p1}, onDraw(Landroid/graphics/Canvas;)V

    .line 16222
    :cond_4c
    invoke-virtual/range {p0 .. p1}, dispatchDraw(Landroid/graphics/Canvas;)V

    .line 16225
    invoke-virtual/range {p0 .. p1}, onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 16227
    move-object/from16 v0, p0

    iget-object v2, v0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v2, v0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 16228
    move-object/from16 v0, p0

    iget-object v2, v0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 16378
    :cond_6f
    :goto_6f
    return-void

    .line 16190
    .end local v11    # "dirtyOpaque":Z
    .end local v19    # "horizontalEdges":Z
    .end local v34    # "verticalEdges":Z
    .end local v35    # "viewFlags":I
    :cond_70
    const/4 v11, 0x0

    goto :goto_1d

    .line 16215
    .restart local v11    # "dirtyOpaque":Z
    .restart local v35    # "viewFlags":I
    :cond_72
    const/16 v19, 0x0

    goto :goto_3b

    .line 16216
    .restart local v19    # "horizontalEdges":Z
    :cond_75
    const/16 v34, 0x0

    goto :goto_43

    .line 16242
    .restart local v34    # "verticalEdges":Z
    :cond_78
    const/4 v15, 0x0

    .line 16243
    .local v15, "drawTop":Z
    const/4 v12, 0x0

    .line 16244
    .local v12, "drawBottom":Z
    const/4 v13, 0x0

    .line 16245
    .local v13, "drawLeft":Z
    const/4 v14, 0x0

    .line 16247
    .local v14, "drawRight":Z
    const/16 v33, 0x0

    .line 16248
    .local v33, "topFadeStrength":F
    const/4 v10, 0x0

    .line 16249
    .local v10, "bottomFadeStrength":F
    const/16 v21, 0x0

    .line 16250
    .local v21, "leftFadeStrength":F
    const/16 v28, 0x0

    .line 16253
    .local v28, "rightFadeStrength":F
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v25, v0

    .line 16255
    .local v25, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, isPaddingOffsetRequired()Z

    move-result v24

    .line 16256
    .local v24, "offsetRequired":Z
    if-eqz v24, :cond_95

    .line 16257
    invoke-virtual/range {p0 .. p0}, getLeftPaddingOffset()I

    move-result v2

    add-int v25, v25, v2

    .line 16260
    :cond_95
    move-object/from16 v0, p0

    iget v2, v0, mScrollX:I

    add-int v20, v2, v25

    .line 16261
    .local v20, "left":I
    move-object/from16 v0, p0

    iget v2, v0, mRight:I

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iget v3, v0, mLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v27, v2, v25

    .line 16262
    .local v27, "right":I
    move-object/from16 v0, p0

    iget v2, v0, mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, getFadeTop(Z)I

    move-result v3

    add-int v32, v2, v3

    .line 16263
    .local v32, "top":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, getFadeHeight(Z)I

    move-result v2

    add-int v9, v32, v2

    .line 16265
    .local v9, "bottom":I
    if-eqz v24, :cond_d2

    .line 16266
    invoke-virtual/range {p0 .. p0}, getRightPaddingOffset()I

    move-result v2

    add-int v27, v27, v2

    .line 16267
    invoke-virtual/range {p0 .. p0}, getBottomPaddingOffset()I

    move-result v2

    add-int/2addr v9, v2

    .line 16270
    :cond_d2
    move-object/from16 v0, p0

    iget-object v0, v0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v30, v0

    .line 16271
    .local v30, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v30

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v17, v0

    .line 16272
    .local v17, "fadeHeight":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    .line 16276
    .local v22, "length":I
    if-eqz v34, :cond_f0

    add-int v2, v32, v22

    sub-int v3, v9, v22

    if-le v2, v3, :cond_f0

    .line 16277
    sub-int v2, v9, v32

    div-int/lit8 v22, v2, 0x2

    .line 16281
    :cond_f0
    if-eqz v19, :cond_fc

    add-int v2, v20, v22

    sub-int v3, v27, v22

    if-le v2, v3, :cond_fc

    .line 16282
    sub-int v2, v27, v20

    div-int/lit8 v22, v2, 0x2

    .line 16285
    :cond_fc
    if-eqz v34, :cond_12e

    .line 16286
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, getTopFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v33

    .line 16287
    mul-float v2, v33, v17

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2d4

    const/4 v15, 0x1

    .line 16288
    :goto_116
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 16289
    mul-float v2, v10, v17

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2d7

    const/4 v12, 0x1

    .line 16292
    :cond_12e
    :goto_12e
    if-eqz v19, :cond_160

    .line 16293
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, getLeftFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 16294
    mul-float v2, v21, v17

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2da

    const/4 v13, 0x1

    .line 16295
    :goto_148
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v28

    .line 16296
    mul-float v2, v28, v17

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2dd

    const/4 v14, 0x1

    .line 16299
    :cond_160
    :goto_160
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v29

    .line 16301
    .local v29, "saveCount":I
    invoke-virtual/range {p0 .. p0}, getSolidColor()I

    move-result v31

    .line 16302
    .local v31, "solidColor":I
    if-nez v31, :cond_2e0

    .line 16303
    const/16 v18, 0x4

    .line 16305
    .local v18, "flags":I
    if-eqz v15, :cond_181

    .line 16306
    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    add-int v2, v32, v22

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 16309
    :cond_181
    if-eqz v12, :cond_194

    .line 16310
    move/from16 v0, v20

    int-to-float v3, v0

    sub-int v2, v9, v22

    int-to-float v4, v2

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 16313
    :cond_194
    if-eqz v13, :cond_1a7

    .line 16314
    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    add-int v2, v20, v22

    int-to-float v5, v2

    int-to-float v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 16317
    :cond_1a7
    if-eqz v14, :cond_1ba

    .line 16318
    sub-int v2, v27, v22

    int-to-float v3, v2

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 16325
    .end local v18    # "flags":I
    :cond_1ba
    :goto_1ba
    if-nez v11, :cond_1bf

    invoke-virtual/range {p0 .. p1}, onDraw(Landroid/graphics/Canvas;)V

    .line 16328
    :cond_1bf
    invoke-virtual/range {p0 .. p1}, dispatchDraw(Landroid/graphics/Canvas;)V

    .line 16331
    move-object/from16 v0, v30

    iget-object v7, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 16332
    .local v7, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    .line 16333
    .local v23, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v16, v0

    .line 16335
    .local v16, "fade":Landroid/graphics/Shader;
    if-eqz v15, :cond_205

    .line 16336
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v17, v33

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 16337
    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 16338
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 16339
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 16340
    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    add-int v2, v32, v22

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16343
    :cond_205
    if-eqz v12, :cond_23b

    .line 16344
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v17, v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 16345
    const/high16 v2, 0x43340000    # 180.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 16346
    move/from16 v0, v20

    int-to-float v2, v0

    int-to-float v3, v9

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 16347
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 16348
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 16349
    move/from16 v0, v20

    int-to-float v3, v0

    sub-int v2, v9, v22

    int-to-float v4, v2

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16352
    :cond_23b
    if-eqz v13, :cond_273

    .line 16353
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v17, v21

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 16354
    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 16355
    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 16356
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 16357
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 16358
    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    add-int v2, v20, v22

    int-to-float v5, v2

    int-to-float v6, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16361
    :cond_273
    if-eqz v14, :cond_2ab

    .line 16362
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v17, v28

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 16363
    const/high16 v2, 0x42b40000    # 90.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 16364
    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 16365
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 16366
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 16367
    sub-int v2, v27, v22

    int-to-float v3, v2

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16370
    :cond_2ab
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 16373
    invoke-virtual/range {p0 .. p1}, onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 16375
    move-object/from16 v0, p0

    iget-object v2, v0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v2, v0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 16376
    move-object/from16 v0, p0

    iget-object v2, v0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6f

    .line 16287
    .end local v7    # "p":Landroid/graphics/Paint;
    .end local v16    # "fade":Landroid/graphics/Shader;
    .end local v23    # "matrix":Landroid/graphics/Matrix;
    .end local v29    # "saveCount":I
    .end local v31    # "solidColor":I
    :cond_2d4
    const/4 v15, 0x0

    goto/16 :goto_116

    .line 16289
    :cond_2d7
    const/4 v12, 0x0

    goto/16 :goto_12e

    .line 16294
    :cond_2da
    const/4 v13, 0x0

    goto/16 :goto_148

    .line 16296
    :cond_2dd
    const/4 v14, 0x0

    goto/16 :goto_160

    .line 16321
    .restart local v29    # "saveCount":I
    .restart local v31    # "solidColor":I
    :cond_2e0
    invoke-virtual/range {v30 .. v31}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_1ba
.end method

.method draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z
    .registers 60
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "drawingTime"    # J

    .prologue
    .line 15829
    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_cb

    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v4, :cond_cb

    const/16 v54, 0x1

    .line 15830
    .local v54, "usingRenderNodeProperties":Z
    :goto_10
    const/16 v38, 0x0

    .line 15831
    .local v38, "more":Z
    invoke-virtual/range {p0 .. p0}, hasIdentityMatrix()Z

    move-result v28

    .line 15832
    .local v28, "childHasIdentityMatrix":Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    .line 15834
    .local v30, "flags":I
    move/from16 v0, v30

    and-int/lit16 v4, v0, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_35

    .line 15835
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 15836
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, -0x101

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 15839
    :cond_35
    const/16 v52, 0x0

    .line 15840
    .local v52, "transformToApply":Landroid/view/animation/Transformation;
    const/16 v29, 0x0

    .line 15842
    .local v29, "concatMatrix":Z
    const/4 v9, 0x0

    .line 15844
    .local v9, "scalingRequired":Z
    invoke-virtual/range {p0 .. p0}, getLayerType()I

    move-result v37

    .line 15846
    .local v37, "layerType":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v31

    .line 15847
    .local v31, "hardwareAccelerated":Z
    const v4, 0x8000

    and-int v4, v4, v30

    if-nez v4, :cond_4f

    move/from16 v0, v30

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_cf

    .line 15849
    :cond_4f
    const/16 v27, 0x1

    .line 15851
    .local v27, "caching":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_5d

    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v9, v4, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 15856
    :cond_5d
    :goto_5d
    invoke-virtual/range {p0 .. p0}, getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    .line 15857
    .local v8, "a":Landroid/view/animation/Animation;
    if-eqz v8, :cond_d9

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    .line 15858
    invoke-direct/range {v4 .. v9}, drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z

    move-result v38

    .line 15859
    invoke-virtual {v8}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v29

    .line 15860
    if-eqz v29, :cond_7d

    .line 15861
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags3:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags3:I

    .line 15863
    :cond_7d
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v52

    .line 15882
    :cond_81
    :goto_81
    if-nez v28, :cond_121

    const/4 v4, 0x1

    :goto_84
    or-int v29, v29, v4

    .line 15886
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags:I

    .line 15888
    if-nez v29, :cond_124

    move/from16 v0, v30

    and-int/lit16 v4, v0, 0x801

    const/4 v5, 0x1

    if-ne v4, v5, :cond_124

    move-object/from16 v0, p0

    iget v4, v0, mLeft:I

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v4, v0, mTop:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v4, v0, mRight:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v4, v0, mBottom:I

    int-to-float v14, v4

    sget-object v15, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v4

    if-eqz v4, :cond_124

    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_124

    .line 15893
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags2:I

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags2:I

    .line 16176
    :goto_ca
    return v38

    .line 15829
    .end local v8    # "a":Landroid/view/animation/Animation;
    .end local v9    # "scalingRequired":Z
    .end local v27    # "caching":Z
    .end local v28    # "childHasIdentityMatrix":Z
    .end local v29    # "concatMatrix":Z
    .end local v30    # "flags":I
    .end local v31    # "hardwareAccelerated":Z
    .end local v37    # "layerType":I
    .end local v38    # "more":Z
    .end local v52    # "transformToApply":Landroid/view/animation/Transformation;
    .end local v54    # "usingRenderNodeProperties":Z
    :cond_cb
    const/16 v54, 0x0

    goto/16 :goto_10

    .line 15853
    .restart local v9    # "scalingRequired":Z
    .restart local v28    # "childHasIdentityMatrix":Z
    .restart local v29    # "concatMatrix":Z
    .restart local v30    # "flags":I
    .restart local v31    # "hardwareAccelerated":Z
    .restart local v37    # "layerType":I
    .restart local v38    # "more":Z
    .restart local v52    # "transformToApply":Landroid/view/animation/Transformation;
    .restart local v54    # "usingRenderNodeProperties":Z
    :cond_cf
    if-nez v37, :cond_d3

    if-eqz v31, :cond_d6

    :cond_d3
    const/16 v27, 0x1

    .restart local v27    # "caching":Z
    :goto_d5
    goto :goto_5d

    .end local v27    # "caching":Z
    :cond_d6
    const/16 v27, 0x0

    goto :goto_d5

    .line 15865
    .restart local v8    # "a":Landroid/view/animation/Animation;
    .restart local v27    # "caching":Z
    :cond_d9
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags3:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f3

    .line 15867
    move-object/from16 v0, p0

    iget-object v4, v0, mRenderNode:Landroid/view/RenderNode;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    .line 15868
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags3:I

    and-int/lit8 v4, v4, -0x2

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags3:I

    .line 15870
    :cond_f3
    if-nez v54, :cond_81

    move/from16 v0, v30

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_81

    .line 15872
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v48

    .line 15873
    .local v48, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v34

    .line 15874
    .local v34, "hasTransform":Z
    if-eqz v34, :cond_81

    .line 15875
    invoke-virtual/range {v48 .. v48}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v53

    .line 15876
    .local v53, "transformType":I
    if-eqz v53, :cond_11b

    move-object/from16 v52, v48

    .line 15877
    :goto_113
    and-int/lit8 v4, v53, 0x2

    if-eqz v4, :cond_11e

    const/16 v29, 0x1

    :goto_119
    goto/16 :goto_81

    .line 15876
    :cond_11b
    const/16 v52, 0x0

    goto :goto_113

    .line 15877
    :cond_11e
    const/16 v29, 0x0

    goto :goto_119

    .line 15882
    .end local v34    # "hasTransform":Z
    .end local v48    # "t":Landroid/view/animation/Transformation;
    .end local v53    # "transformType":I
    :cond_121
    const/4 v4, 0x0

    goto/16 :goto_84

    .line 15896
    :cond_124
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags2:I

    const v5, -0x10000001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags2:I

    .line 15898
    if-eqz v31, :cond_14e

    .line 15901
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_3b9

    const/4 v4, 0x1

    :goto_13e
    move-object/from16 v0, p0

    iput-boolean v4, v0, mRecreateDisplayList:Z

    .line 15902
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags:I

    .line 15905
    :cond_14e
    const/16 v40, 0x0

    .line 15906
    .local v40, "renderNode":Landroid/view/RenderNode;
    const/16 v25, 0x0

    .line 15907
    .local v25, "cache":Landroid/graphics/Bitmap;
    const/16 v32, 0x0

    .line 15908
    .local v32, "hasDisplayList":Z
    if-eqz v27, :cond_169

    .line 15909
    if-nez v31, :cond_3bc

    .line 15910
    if-eqz v37, :cond_162

    .line 15911
    const/16 v37, 0x1

    .line 15912
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, buildDrawingCache(Z)V

    .line 15914
    :cond_162
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 15938
    :cond_169
    :goto_169
    and-int v54, v54, v32

    .line 15939
    if-eqz v54, :cond_184

    .line 15940
    invoke-virtual/range {p0 .. p0}, getDisplayList()Landroid/view/RenderNode;

    move-result-object v40

    .line 15941
    invoke-virtual/range {v40 .. v40}, Landroid/view/RenderNode;->isValid()Z

    move-result v4

    if-nez v4, :cond_184

    .line 15945
    const-string v4, "ViewSystem"

    const-string v5, "View #3 displayList is not valid."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15946
    const/16 v40, 0x0

    .line 15947
    const/16 v32, 0x0

    .line 15948
    const/16 v54, 0x0

    .line 15952
    :cond_184
    const/16 v46, 0x0

    .line 15953
    .local v46, "sx":I
    const/16 v47, 0x0

    .line 15954
    .local v47, "sy":I
    if-nez v32, :cond_199

    .line 15955
    invoke-virtual/range {p0 .. p0}, computeScroll()V

    .line 15956
    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v46, v0

    .line 15957
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v47, v0

    .line 15960
    :cond_199
    if-eqz v25, :cond_19d

    if-eqz v32, :cond_3e6

    :cond_19d
    const/16 v33, 0x1

    .line 15961
    .local v33, "hasNoCache":Z
    :goto_19f
    if-nez v25, :cond_3ea

    if-nez v32, :cond_3ea

    const/4 v4, 0x2

    move/from16 v0, v37

    if-eq v0, v4, :cond_3ea

    const/16 v39, 0x1

    .line 15964
    .local v39, "offsetForScroll":Z
    :goto_1aa
    const/16 v42, -0x1

    .line 15965
    .local v42, "restoreTo":I
    if-eqz v54, :cond_1b0

    if-eqz v52, :cond_1b4

    .line 15966
    :cond_1b0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v42

    .line 15968
    :cond_1b4
    if-eqz v39, :cond_3ee

    .line 15969
    move-object/from16 v0, p0

    iget v4, v0, mLeft:I

    sub-int v4, v4, v46

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, mTop:I

    sub-int v5, v5, v47

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15985
    :cond_1c9
    :goto_1c9
    if-eqz v54, :cond_41c

    const/high16 v24, 0x3f800000    # 1.0f

    .line 15986
    .local v24, "alpha":F
    :goto_1cd
    if-nez v52, :cond_1e4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v24, v4

    if-ltz v4, :cond_1e4

    invoke-virtual/range {p0 .. p0}, hasIdentityMatrix()Z

    move-result v4

    if-eqz v4, :cond_1e4

    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags3:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_499

    .line 15988
    :cond_1e4
    if-nez v52, :cond_1e8

    if-nez v28, :cond_24c

    .line 15989
    :cond_1e8
    const/16 v49, 0x0

    .line 15990
    .local v49, "transX":I
    const/16 v50, 0x0

    .line 15992
    .local v50, "transY":I
    if-eqz v39, :cond_1f8

    .line 15993
    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v49, v0

    .line 15994
    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v50, v0

    .line 15997
    :cond_1f8
    if-eqz v52, :cond_227

    .line 15998
    if-eqz v29, :cond_211

    .line 15999
    if-eqz v54, :cond_428

    .line 16000
    invoke-virtual/range {v52 .. v52}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    .line 16008
    :goto_207
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 16011
    :cond_211
    invoke-virtual/range {v52 .. v52}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v51

    .line 16012
    .local v51, "transformAlpha":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v51, v4

    if-gez v4, :cond_227

    .line 16013
    mul-float v24, v24, v51

    .line 16014
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 16018
    .end local v51    # "transformAlpha":F
    :cond_227
    if-nez v28, :cond_24c

    if-nez v54, :cond_24c

    .line 16019
    move/from16 v0, v49

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v50

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16020
    invoke-virtual/range {p0 .. p0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 16021
    move/from16 v0, v49

    int-to-float v4, v0

    move/from16 v0, v50

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16026
    .end local v49    # "transX":I
    .end local v50    # "transY":I
    :cond_24c
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v24, v4

    if-ltz v4, :cond_25b

    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags3:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a0

    .line 16028
    :cond_25b
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v24, v4

    if-gez v4, :cond_44b

    .line 16029
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags3:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags3:I

    .line 16033
    :goto_26b
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 16034
    if-eqz v33, :cond_2a0

    .line 16035
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v24

    float-to-int v15, v4

    .line 16036
    .local v15, "multipliedAlpha":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, onSetAlpha(I)Z

    move-result v4

    if-nez v4, :cond_48c

    .line 16037
    const/16 v16, 0x4

    .line 16038
    .local v16, "layerFlags":I
    and-int/lit8 v4, v30, 0x1

    if-nez v4, :cond_28c

    if-eqz v37, :cond_28e

    .line 16040
    :cond_28c
    or-int/lit8 v16, v16, 0x10

    .line 16042
    :cond_28e
    if-eqz v54, :cond_457

    .line 16043
    invoke-virtual/range {p0 .. p0}, getAlpha()F

    move-result v4

    mul-float v4, v4, v24

    invoke-virtual/range {p0 .. p0}, getTransitionAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 16062
    .end local v15    # "multipliedAlpha":I
    .end local v16    # "layerFlags":I
    :cond_2a0
    :goto_2a0
    if-nez v54, :cond_2d9

    .line 16064
    and-int/lit8 v4, v30, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2ca

    if-nez v25, :cond_2ca

    .line 16066
    if-eqz v39, :cond_4b9

    .line 16067
    move-object/from16 v0, p0

    iget v4, v0, mRight:I

    move-object/from16 v0, p0

    iget v5, v0, mLeft:I

    sub-int/2addr v4, v5

    add-int v4, v4, v46

    move-object/from16 v0, p0

    iget v5, v0, mBottom:I

    move-object/from16 v0, p0

    iget v6, v0, mTop:I

    sub-int/2addr v5, v6

    add-int v5, v5, v47

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 16077
    :cond_2ca
    :goto_2ca
    move-object/from16 v0, p0

    iget-object v4, v0, mClipBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_2d9

    .line 16079
    move-object/from16 v0, p0

    iget-object v4, v0, mClipBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 16085
    :cond_2d9
    if-nez v54, :cond_2f2

    if-eqz v32, :cond_2f2

    .line 16086
    invoke-virtual/range {p0 .. p0}, getDisplayList()Landroid/view/RenderNode;

    move-result-object v40

    .line 16087
    invoke-virtual/range {v40 .. v40}, Landroid/view/RenderNode;->isValid()Z

    move-result v4

    if-nez v4, :cond_2f2

    .line 16091
    const-string v4, "ViewSystem"

    const-string v5, "View #4 displayList is not valid."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16092
    const/16 v40, 0x0

    .line 16093
    const/16 v32, 0x0

    .line 16097
    :cond_2f2
    if-eqz v33, :cond_55a

    .line 16098
    const/16 v36, 0x0

    .line 16099
    .local v36, "layerRendered":Z
    const/4 v4, 0x2

    move/from16 v0, v37

    if-ne v0, v4, :cond_337

    if-nez v54, :cond_337

    .line 16100
    invoke-virtual/range {p0 .. p0}, getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v35

    .line 16101
    .local v35, "layer":Landroid/view/HardwareLayer;
    if-eqz v35, :cond_4e9

    invoke-virtual/range {v35 .. v35}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4e9

    .line 16102
    move-object/from16 v0, p0

    iget-object v4, v0, mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v41

    .line 16103
    .local v41, "restoreAlpha":I
    move-object/from16 v0, p0

    iget-object v4, v0, mLayerPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, v24

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v4, p1

    .line 16104
    check-cast v4, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 16105
    move-object/from16 v0, p0

    iget-object v4, v0, mLayerPaint:Landroid/graphics/Paint;

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16106
    const/16 v36, 0x1

    .line 16117
    .end local v35    # "layer":Landroid/view/HardwareLayer;
    .end local v41    # "restoreAlpha":I
    :cond_337
    :goto_337
    if-nez v36, :cond_374

    .line 16118
    if-nez v32, :cond_540

    .line 16120
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_53b

    .line 16121
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const v5, -0x600001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags:I

    .line 16122
    invoke-virtual/range {p0 .. p1}, dispatchDraw(Landroid/graphics/Canvas;)V

    .line 16123
    move-object/from16 v0, p0

    iget-object v4, v0, mOverlay:Landroid/view/ViewOverlay;

    if-eqz v4, :cond_371

    move-object/from16 v0, p0

    iget-object v4, v0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v4}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_371

    .line 16124
    move-object/from16 v0, p0

    iget-object v4, v0, mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v4}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 16129
    :cond_371
    :goto_371
    invoke-direct/range {p0 .. p1}, drawAccessibilityFocus(Landroid/graphics/Canvas;)V

    .line 16156
    .end local v36    # "layerRendered":Z
    :cond_374
    :goto_374
    if-ltz v42, :cond_37d

    .line 16157
    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 16160
    :cond_37d
    if-eqz v8, :cond_397

    if-nez v38, :cond_397

    .line 16161
    if-nez v31, :cond_390

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v4

    if-nez v4, :cond_390

    .line 16162
    const/16 v4, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, onSetAlpha(I)Z

    .line 16164
    :cond_390
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 16167
    :cond_397
    if-eqz v38, :cond_3b2

    if-eqz v31, :cond_3b2

    .line 16168
    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v4

    if-eqz v4, :cond_3b2

    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    const/high16 v5, 0x40000

    if-ne v4, v5, :cond_3b2

    .line 16170
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, invalidate(Z)V

    .line 16174
    :cond_3b2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mRecreateDisplayList:Z

    goto/16 :goto_ca

    .line 15901
    .end local v24    # "alpha":F
    .end local v25    # "cache":Landroid/graphics/Bitmap;
    .end local v32    # "hasDisplayList":Z
    .end local v33    # "hasNoCache":Z
    .end local v39    # "offsetForScroll":Z
    .end local v40    # "renderNode":Landroid/view/RenderNode;
    .end local v42    # "restoreTo":I
    .end local v46    # "sx":I
    .end local v47    # "sy":I
    :cond_3b9
    const/4 v4, 0x0

    goto/16 :goto_13e

    .line 15916
    .restart local v25    # "cache":Landroid/graphics/Bitmap;
    .restart local v32    # "hasDisplayList":Z
    .restart local v40    # "renderNode":Landroid/view/RenderNode;
    :cond_3bc
    packed-switch v37, :pswitch_data_5b2

    goto/16 :goto_169

    .line 15933
    :pswitch_3c1
    invoke-virtual/range {p0 .. p0}, canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_169

    .line 15918
    :pswitch_3c7
    if-eqz v54, :cond_3cf

    .line 15919
    invoke-virtual/range {p0 .. p0}, canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_169

    .line 15921
    :cond_3cf
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, buildDrawingCache(Z)V

    .line 15922
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 15924
    goto/16 :goto_169

    .line 15926
    :pswitch_3de
    if-eqz v54, :cond_169

    .line 15927
    invoke-virtual/range {p0 .. p0}, canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_169

    .line 15960
    .restart local v46    # "sx":I
    .restart local v47    # "sy":I
    :cond_3e6
    const/16 v33, 0x0

    goto/16 :goto_19f

    .line 15961
    .restart local v33    # "hasNoCache":Z
    :cond_3ea
    const/16 v39, 0x0

    goto/16 :goto_1aa

    .line 15971
    .restart local v39    # "offsetForScroll":Z
    .restart local v42    # "restoreTo":I
    :cond_3ee
    if-nez v54, :cond_3ff

    .line 15972
    move-object/from16 v0, p0

    iget v4, v0, mLeft:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, mTop:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15974
    :cond_3ff
    if-eqz v9, :cond_1c9

    .line 15975
    if-eqz v54, :cond_407

    .line 15977
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v42

    .line 15980
    :cond_407
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v43, v4, v5

    .line 15981
    .local v43, "scale":F
    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_1c9

    .line 15985
    .end local v43    # "scale":F
    :cond_41c
    invoke-virtual/range {p0 .. p0}, getAlpha()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, getTransitionAlpha()F

    move-result v5

    mul-float v24, v4, v5

    goto/16 :goto_1cd

    .line 16004
    .restart local v24    # "alpha":F
    .restart local v49    # "transX":I
    .restart local v50    # "transY":I
    :cond_428
    move/from16 v0, v49

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v50

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16005
    invoke-virtual/range {v52 .. v52}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 16006
    move/from16 v0, v49

    int-to-float v4, v0

    move/from16 v0, v50

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_207

    .line 16031
    .end local v49    # "transX":I
    .end local v50    # "transY":I
    :cond_44b
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags3:I

    and-int/lit8 v4, v4, -0x3

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags3:I

    goto/16 :goto_26b

    .line 16044
    .restart local v15    # "multipliedAlpha":I
    .restart local v16    # "layerFlags":I
    :cond_457
    if-nez v37, :cond_2a0

    .line 16045
    if-eqz v32, :cond_486

    const/16 v44, 0x0

    .line 16046
    .local v44, "scrollX":I
    :goto_45d
    if-eqz v32, :cond_489

    const/16 v45, 0x0

    .line 16047
    .local v45, "scrollY":I
    :goto_461
    move/from16 v0, v44

    int-to-float v11, v0

    move/from16 v0, v45

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v4, v0, mRight:I

    move-object/from16 v0, p0

    iget v5, v0, mLeft:I

    sub-int/2addr v4, v5

    add-int v4, v4, v44

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v4, v0, mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, mTop:I

    sub-int/2addr v4, v5

    add-int v4, v4, v45

    int-to-float v14, v4

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto/16 :goto_2a0

    .end local v44    # "scrollX":I
    .end local v45    # "scrollY":I
    :cond_486
    move/from16 v44, v46

    .line 16045
    goto :goto_45d

    .restart local v44    # "scrollX":I
    :cond_489
    move/from16 v45, v47

    .line 16046
    goto :goto_461

    .line 16053
    .end local v16    # "layerFlags":I
    .end local v44    # "scrollX":I
    :cond_48c
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags:I

    goto/16 :goto_2a0

    .line 16057
    .end local v15    # "multipliedAlpha":I
    :cond_499
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    const/high16 v5, 0x40000

    if-ne v4, v5, :cond_2a0

    .line 16058
    const/16 v4, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, onSetAlpha(I)Z

    .line 16059
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const v5, -0x40001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags:I

    goto/16 :goto_2a0

    .line 16069
    :cond_4b9
    if-eqz v9, :cond_4bd

    if-nez v25, :cond_4d8

    .line 16070
    :cond_4bd
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, mRight:I

    move-object/from16 v0, p0

    iget v7, v0, mLeft:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, mBottom:I

    move-object/from16 v0, p0

    iget v10, v0, mTop:I

    sub-int/2addr v7, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2ca

    .line 16072
    :cond_4d8
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2ca

    .line 16108
    .restart local v35    # "layer":Landroid/view/HardwareLayer;
    .restart local v36    # "layerRendered":Z
    :cond_4e9
    if-eqz v35, :cond_4f8

    invoke-virtual/range {v35 .. v35}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v4

    if-nez v4, :cond_4f8

    const-string v4, "ViewSystem"

    const-string v5, "View #5 getHardwareLayer() is not valid."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16109
    :cond_4f8
    if-eqz v32, :cond_535

    const/16 v44, 0x0

    .line 16110
    .restart local v44    # "scrollX":I
    :goto_4fc
    if-eqz v32, :cond_538

    const/16 v45, 0x0

    .line 16111
    .restart local v45    # "scrollY":I
    :goto_500
    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v4, v0, mRight:I

    add-int v4, v4, v44

    move-object/from16 v0, p0

    iget v5, v0, mLeft:I

    sub-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v4, v0, mBottom:I

    add-int v4, v4, v45

    move-object/from16 v0, p0

    iget v5, v0, mTop:I

    sub-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, 0x14

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_337

    .end local v44    # "scrollX":I
    .end local v45    # "scrollY":I
    :cond_535
    move/from16 v44, v46

    .line 16109
    goto :goto_4fc

    .restart local v44    # "scrollX":I
    :cond_538
    move/from16 v45, v47

    .line 16110
    goto :goto_500

    .line 16127
    .end local v35    # "layer":Landroid/view/HardwareLayer;
    .end local v44    # "scrollX":I
    :cond_53b
    invoke-virtual/range {p0 .. p1}, draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_371

    .line 16131
    :cond_540
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const v5, -0x600001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags:I

    move-object/from16 v4, p1

    .line 16132
    check-cast v4, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v4, v0, v5, v1}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;Landroid/graphics/Rect;I)I

    goto/16 :goto_374

    .line 16135
    .end local v36    # "layerRendered":Z
    :cond_55a
    if-eqz v25, :cond_374

    .line 16136
    move-object/from16 v0, p0

    iget v4, v0, mPrivateFlags:I

    const v5, -0x600001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mPrivateFlags:I

    .line 16138
    const/16 v41, 0x0

    .line 16140
    .restart local v41    # "restoreAlpha":I
    if-nez v37, :cond_5a3

    .line 16141
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    .line 16142
    .local v26, "cachePaint":Landroid/graphics/Paint;
    if-nez v26, :cond_585

    .line 16143
    new-instance v26, Landroid/graphics/Paint;

    .end local v26    # "cachePaint":Landroid/graphics/Paint;
    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 16144
    .restart local v26    # "cachePaint":Landroid/graphics/Paint;
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 16145
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 16151
    :cond_585
    :goto_585
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v24

    float-to-int v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16152
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 16153
    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_374

    .line 16148
    .end local v26    # "cachePaint":Landroid/graphics/Paint;
    :cond_5a3
    move-object/from16 v0, p0

    iget-object v0, v0, mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    .line 16149
    .restart local v26    # "cachePaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v41

    goto :goto_585

    .line 15916
    :pswitch_data_5b2
    .packed-switch 0x0
        :pswitch_3c1
        :pswitch_3c7
        :pswitch_3de
    .end packed-switch
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 17032
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 17033
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 17035
    :cond_9
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 4

    .prologue
    .line 17012
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 17013
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17014
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 17017
    :cond_11
    iget-object v1, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    if-eqz v1, :cond_1e

    .line 17018
    iget-object v1, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/StateListAnimator;->setState([I)V

    .line 17020
    :cond_1e
    return-void
.end method

.method ensureTransformationInfo()V
    .registers 2

    .prologue
    .line 11016
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_b

    .line 11017
    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 11019
    :cond_b
    return-void
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 8
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    const/4 v4, 0x0

    .line 22328
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 22329
    .local v1, "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    if-nez v1, :cond_8

    move v3, v4

    .line 22340
    :goto_7
    return v3

    .line 22333
    :cond_8
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v2

    .line 22334
    .local v2, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    move-object v0, v3

    .line 22336
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    :goto_15
    if-eqz v0, :cond_1e

    .line 22337
    invoke-virtual {v0, p0, v1, p2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v3

    goto :goto_7

    .line 22334
    .end local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_15

    .restart local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    :cond_1e
    move v3, v4

    .line 22340
    goto :goto_7
.end method

.method protected findEllipsizedTextView(Landroid/view/View;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10178
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_24

    .line 10179
    instance-of v7, p1, Landroid/widget/GridView;

    if-eqz v7, :cond_b

    .line 10199
    :cond_a
    :goto_a
    return v5

    :cond_b
    move-object v4, p1

    .line 10183
    check-cast v4, Landroid/view/ViewGroup;

    .line 10184
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 10185
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_a

    .line 10186
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 10187
    .local v1, "found":Z
    if-eqz v1, :cond_21

    move v5, v6

    goto :goto_a

    .line 10185
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 10189
    .end local v0    # "childCount":I
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_24
    instance-of v7, p1, Landroid/widget/TextView;

    if-eqz v7, :cond_a

    move-object v3, p1

    .line 10190
    check-cast v3, Landroid/widget/TextView;

    .line 10191
    .local v3, "textView":Landroid/widget/TextView;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v6

    .line 10196
    goto :goto_a
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 6565
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20547
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, mGhostView:Landroid/view/GhostView;

    if-eqz v1, :cond_13

    .line 20548
    :cond_a
    invoke-virtual {p0}, getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 20549
    .local v0, "transitionName":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 20550
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20553
    .end local v0    # "transitionName":Ljava/lang/String;
    :cond_13
    return-void
.end method

.method protected findSetFingerHovedInAppWidget(Landroid/view/View;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 10234
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1d

    move-object v4, p1

    .line 10235
    check-cast v4, Landroid/view/ViewGroup;

    .line 10236
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 10237
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_2a

    .line 10238
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v1

    .line 10239
    .local v1, "found":Z
    if-nez v1, :cond_1a

    .line 10247
    .end local v0    # "childCount":I
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_19
    :goto_19
    return v5

    .line 10237
    .restart local v0    # "childCount":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 10241
    .end local v0    # "childCount":I
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1d
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_2a

    move-object v3, p1

    .line 10242
    check-cast v3, Landroid/widget/TextView;

    .line 10243
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->isFingerHoveredInAppWidget()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 10247
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_2a
    const/4 v5, 0x1

    goto :goto_19
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 7768
    sparse-switch p2, :sswitch_data_4e

    .line 7795
    :cond_5
    :goto_5
    return-object v1

    .line 7770
    :sswitch_6
    iget v2, p0, mNextFocusLeftId:I

    if-eq v2, v3, :cond_5

    .line 7771
    iget v1, p0, mNextFocusLeftId:I

    invoke-direct {p0, p1, v1}, findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 7773
    :sswitch_11
    iget v2, p0, mNextFocusRightId:I

    if-eq v2, v3, :cond_5

    .line 7774
    iget v1, p0, mNextFocusRightId:I

    invoke-direct {p0, p1, v1}, findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 7776
    :sswitch_1c
    iget v2, p0, mNextFocusUpId:I

    if-eq v2, v3, :cond_5

    .line 7777
    iget v1, p0, mNextFocusUpId:I

    invoke-direct {p0, p1, v1}, findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 7779
    :sswitch_27
    iget v2, p0, mNextFocusDownId:I

    if-eq v2, v3, :cond_5

    .line 7780
    iget v1, p0, mNextFocusDownId:I

    invoke-direct {p0, p1, v1}, findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 7782
    :sswitch_32
    iget v2, p0, mNextFocusForwardId:I

    if-eq v2, v3, :cond_5

    .line 7783
    iget v1, p0, mNextFocusForwardId:I

    invoke-direct {p0, p1, v1}, findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 7785
    :sswitch_3d
    iget v2, p0, mID:I

    if-eq v2, v3, :cond_5

    .line 7786
    iget v0, p0, mID:I

    .line 7787
    .local v0, "id":I
    new-instance v1, Landroid/view/View$2;

    invoke-direct {v1, p0, v0}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 7768
    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_32
        0x11 -> :sswitch_6
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_11
        0x82 -> :sswitch_27
    .end sparse-switch
.end method

.method final findViewByAccessibilityId(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .prologue
    .line 18135
    if-gez p1, :cond_4

    .line 18136
    const/4 v0, 0x0

    .line 18138
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .prologue
    .line 18157
    invoke-virtual {p0}, getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 18160
    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public final findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 18122
    if-gez p1, :cond_4

    .line 18123
    const/4 v0, 0x0

    .line 18125
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 18186
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 7
    .param p1, "start"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 18206
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 18208
    .local v0, "childToSkip":Landroid/view/View;
    :goto_1
    invoke-virtual {p1, p2, v0}, findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 18209
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_9

    if-ne p1, p0, :cond_a

    .line 18215
    .end local v2    # "view":Landroid/view/View;
    :cond_9
    :goto_9
    return-object v2

    .line 18213
    .restart local v2    # "view":Landroid/view/View;
    :cond_a
    invoke-virtual {p1}, getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 18214
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_14

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_16

    .line 18215
    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 18218
    :cond_16
    move-object v0, p1

    move-object p1, v1

    .line 18219
    check-cast p1, Landroid/view/View;

    .line 18220
    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 18108
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18111
    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 18083
    iget v0, p0, mID:I

    if-ne p1, v0, :cond_5

    .line 18086
    .end local p0    # "this":Landroid/view/View;
    :goto_4
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_5
    const/4 p0, 0x0

    goto :goto_4
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 18171
    if-nez p1, :cond_4

    .line 18172
    const/4 v0, 0x0

    .line 18174
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 18095
    if-eqz p1, :cond_b

    iget-object v0, p0, mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18098
    .end local p0    # "this":Landroid/view/View;
    :goto_a
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_b
    const/4 p0, 0x0

    goto :goto_a
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 7
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 7883
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 7884
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_d

    .line 7885
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7896
    :cond_d
    :goto_d
    return-void

    .line 7887
    :cond_e
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_d

    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_d

    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 7890
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 7891
    .local v1, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7892
    .local v0, "contentDescriptionLowerCase":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7893
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 6861
    iget v0, p0, mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2c

    .line 6862
    if-nez p1, :cond_a

    .line 6866
    const/4 v0, 0x0

    .line 6880
    :goto_9
    return v0

    .line 6872
    :cond_a
    :try_start_a
    iget v0, p0, mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, mPrivateFlags3:I

    .line 6873
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_24

    move-result v0

    .line 6875
    iget v1, p0, mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, mPrivateFlags3:I

    goto :goto_9

    :catchall_24
    move-exception v0

    iget v1, p0, mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, mPrivateFlags3:I

    throw v0

    .line 6880
    :cond_2c
    invoke-direct {p0, p1}, fitSystemWindowsInt(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_9
.end method

.method public fitsSystemWindows()Z
    .registers 2

    .prologue
    .line 7084
    invoke-virtual {p0}, getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 7737
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_b

    .line 7738
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 7740
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public forceLayout()V
    .registers 3

    .prologue
    .line 18543
    iget-object v0, p0, mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clear()V

    .line 18545
    :cond_9
    iget v0, p0, mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, mPrivateFlags:I

    .line 18546
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 18547
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 19008
    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 19009
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_2f

    if-eqz v6, :cond_2f

    .line 19010
    iget v8, p0, mPrivateFlags:I

    .line 19011
    .local v8, "pflags":I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_30

    .line 19014
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 19015
    .local v7, "location":[I
    invoke-virtual {p0, v7}, getLocationInWindow([I)V

    .line 19016
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, mRight:I

    add-int/2addr v0, v3

    iget v3, p0, mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 19026
    .end local v7    # "location":[I
    .end local v8    # "pflags":I
    :cond_2f
    :goto_2f
    return v9

    .line 19018
    .restart local v8    # "pflags":I
    :cond_30
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_2f

    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2f

    .line 19023
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_2f
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .registers 2

    .prologue
    .line 6370
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAccessibilityLiveRegion()I
    .registers 3

    .prologue
    .line 8248
    iget v0, p0, mPrivateFlags2:I

    const/high16 v1, 0x1800000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .prologue
    .line 6409
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 6410
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 6412
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAccessibilitySelectionEnd()I
    .registers 2

    .prologue
    .line 8669
    invoke-virtual {p0}, getAccessibilitySelectionStart()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .registers 2

    .prologue
    .line 8662
    iget v0, p0, mAccessibilityCursorPosition:I

    return v0
.end method

.method public getAccessibilityViewId()I
    .registers 3

    .prologue
    .line 6425
    iget v0, p0, mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 6426
    sget v0, sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, sNextAccessibilityViewId:I

    iput v0, p0, mAccessibilityViewId:I

    .line 6428
    :cond_d
    iget v0, p0, mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .registers 2

    .prologue
    .line 6439
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :goto_8
    return v0

    :cond_9
    const v0, 0x7fffffff

    goto :goto_8
.end method

.method public getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;
    .registers 2

    .prologue
    .line 9819
    iget-object v0, p0, mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object v0
.end method

.method public getAlpha()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11392
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 18899
    iget-object v0, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 14446
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14447
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 14448
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 14449
    .local v1, "appWindowToken":Landroid/os/IBinder;
    if-nez v1, :cond_a

    .line 14450
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 14454
    .end local v1    # "appWindowToken":Landroid/os/IBinder;
    :cond_a
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 17371
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 17407
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    iget-object v0, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 17442
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    iget-object v0, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 18485
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 11601
    iget v0, p0, mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 13340
    invoke-virtual {p0}, computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getBottomPaddingOffset()I
    .registers 2

    .prologue
    .line 15628
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    .line 5995
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v5, :cond_a

    .line 6044
    :goto_9
    return-void

    .line 5999
    :cond_a
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6000
    .local v2, "position":Landroid/graphics/RectF;
    iget v5, p0, mRight:I

    iget v6, p0, mLeft:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, mBottom:I

    iget v7, p0, mTop:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v8, v8, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6002
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 6003
    invoke-virtual {p0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6006
    :cond_2a
    iget v5, p0, mLeft:I

    int-to-float v5, v5

    iget v6, p0, mTop:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 6008
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    .line 6009
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_35
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_60

    move-object v1, v0

    .line 6010
    check-cast v1, Landroid/view/View;

    .line 6012
    .local v1, "parentView":Landroid/view/View;
    iget v5, v1, mScrollX:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, v1, mScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 6014
    invoke-virtual {v1}, hasIdentityMatrix()Z

    move-result v5

    if-nez v5, :cond_54

    .line 6015
    invoke-virtual {v1}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6018
    :cond_54
    iget v5, v1, mLeft:I

    int-to-float v5, v5

    iget v6, v1, mTop:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 6020
    iget-object v0, v1, mParent:Landroid/view/ViewParent;

    .line 6021
    goto :goto_35

    .line 6023
    .end local v1    # "parentView":Landroid/view/View;
    :cond_60
    instance-of v5, v0, Landroid/view/ViewRootImpl;

    if-eqz v5, :cond_6e

    move-object v4, v0

    .line 6024
    check-cast v4, Landroid/view/ViewRootImpl;

    .line 6025
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget v5, v4, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v8, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 6029
    .end local v4    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_6e
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 6030
    .local v3, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v3, :cond_a8

    iget-object v5, v3, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_84

    iget-object v5, v3, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_a8

    .line 6033
    :cond_84
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget-object v6, v3, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 6034
    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget-object v6, v3, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->right:F

    .line 6035
    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v6, v3, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 6036
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v3, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 6040
    :cond_a8
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v5, v5

    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 6042
    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v9

    float-to-int v7, v7

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_9
.end method

.method public getCameraDistance()F
    .registers 3

    .prologue
    .line 11047
    iget-object v1, p0, mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v1

    .line 11048
    .local v0, "dpi":F
    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1}, Landroid/view/RenderNode;->getCameraDistance()F

    move-result v1

    mul-float/2addr v1, v0

    neg-float v1, v1

    return v1
.end method

.method public getClipBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 15713
    iget-object v0, p0, mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final getClipToOutline()Z
    .registers 2

    .prologue
    .line 12012
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getClipToOutline()Z

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    .line 6456
    iget-object v0, p0, mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9520
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 9880
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentWritingBuddyView()Landroid/view/View;
    .registers 3

    .prologue
    .line 9798
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 9799
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_b

    .line 9800
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    .line 9802
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 2

    .prologue
    .line 14463
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getDisplayList()Landroid/view/RenderNode;
    .registers 2

    .prologue
    .line 15162
    invoke-direct {p0}, updateDisplayListIfDirty()V

    .line 15163
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    return-object v0
.end method

.method public final getDrawableState()[I
    .registers 2

    .prologue
    .line 17066
    iget-object v0, p0, mDrawableState:[I

    if-eqz v0, :cond_d

    iget v0, p0, mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_d

    .line 17067
    iget-object v0, p0, mDrawableState:[I

    .line 17071
    :goto_c
    return-object v0

    .line 17069
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, mDrawableState:[I

    .line 17070
    iget v0, p0, mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, mPrivateFlags:I

    .line 17071
    iget-object v0, p0, mDrawableState:[I

    goto :goto_c
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 15184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "autoScale"    # Z

    .prologue
    const/high16 v2, 0x20000

    const v1, 0x8000

    .line 15215
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c

    .line 15216
    const/4 v0, 0x0

    .line 15221
    :goto_b
    return-object v0

    .line 15218
    :cond_c
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 15219
    invoke-virtual {p0, p1}, buildDrawingCache(Z)V

    .line 15221
    :cond_14
    if-eqz p1, :cond_19

    iget-object v0, p0, mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b

    :cond_19
    iget-object v0, p0, mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method public getDrawingCacheBackgroundColor()I
    .registers 2

    .prologue
    .line 15269
    iget v0, p0, mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .registers 3

    .prologue
    .line 6619
    iget v0, p0, mViewFlags:I

    const/high16 v1, 0x180000

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 10920
    iget v0, p0, mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 10921
    iget v0, p0, mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 10922
    iget v0, p0, mScrollX:I

    iget v1, p0, mRight:I

    iget v2, p0, mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 10923
    iget v0, p0, mScrollY:I

    iget v1, p0, mBottom:I

    iget v2, p0, mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 10924
    return-void
.end method

.method public getDrawingTime()J
    .registers 3

    .prologue
    .line 14750
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getElevation()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11850
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getElevation()F

    move-result v0

    return v0
.end method

.method protected getFadeHeight(Z)I
    .registers 5
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 15646
    iget v0, p0, mPaddingTop:I

    .line 15647
    .local v0, "padding":I
    if-eqz p1, :cond_9

    invoke-virtual {p0}, getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 15648
    :cond_9
    iget v1, p0, mBottom:I

    iget v2, p0, mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, mPaddingBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method protected getFadeTop(Z)I
    .registers 4
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 15636
    iget v0, p0, mPaddingTop:I

    .line 15637
    .local v0, "top":I
    if-eqz p1, :cond_9

    invoke-virtual {p0}, getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 15638
    :cond_9
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7653
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFitsSystemWindows()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7079
    iget v0, p0, mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7818
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7819
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, addFocusables(Ljava/util/ArrayList;I)V

    .line 7820
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 12196
    invoke-virtual {p0, p1}, getDrawingRect(Landroid/graphics/Rect;)V

    .line 12197
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 12227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 8
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "globalOffset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 12214
    iget v3, p0, mRight:I

    iget v4, p0, mLeft:I

    sub-int v1, v3, v4

    .line 12215
    .local v1, "width":I
    iget v3, p0, mBottom:I

    iget v4, p0, mTop:I

    sub-int v0, v3, v4

    .line 12216
    .local v0, "height":I
    if-lez v1, :cond_2c

    if-lez v0, :cond_2c

    .line 12217
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 12218
    if-eqz p2, :cond_1f

    .line 12219
    iget v3, p0, mScrollX:I

    neg-int v3, v3

    iget v4, p0, mScrollY:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 12221
    :cond_1f
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2b

    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_2b
    const/4 v2, 0x1

    .line 12223
    :cond_2c
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 3

    .prologue
    .line 12925
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12926
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    .line 12927
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 12929
    :goto_6
    return-object v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .registers 2

    .prologue
    .line 14969
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardwareRenderer()Landroid/view/HardwareRenderer;
    .registers 2

    .prologue
    .line 12948
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final getHeight()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 10907
    iget v0, p0, mBottom:I

    iget v1, p0, mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 12152
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_17

    .line 12153
    :cond_b
    iget v1, p0, mLeft:I

    iget v2, p0, mTop:I

    iget v3, p0, mRight:I

    iget v4, p0, mBottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 12161
    :goto_16
    return-void

    .line 12155
    :cond_17
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 12156
    .local v0, "tmpRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12157
    invoke-virtual {p0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 12158
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, mLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, mTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, mLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, mTop:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_16
.end method

.method public getHorizontalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 4821
    invoke-virtual {p0}, isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4822
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4823
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 4824
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4827
    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getHorizontalScrollFactor()F
    .registers 2

    .prologue
    .line 20046
    invoke-virtual {p0}, getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4859
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4860
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_11

    .line 4861
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4862
    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_11

    .line 4863
    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 4864
    .local v2, "size":I
    if-gtz v2, :cond_11

    .line 4865
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4871
    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_11
    return v2
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 5401
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5402
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_a

    .line 5403
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 5407
    :goto_9
    return-void

    .line 5405
    :cond_a
    invoke-virtual {p0, p1}, getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method public getHoverPopup()Landroid/widget/HoverPopupWindow;
    .registers 2

    .prologue
    .line 22407
    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    return-object v0
.end method

.method public getHoverPopupWindow()Landroid/widget/HoverPopupWindow;
    .registers 3

    .prologue
    .line 22429
    invoke-virtual {p0}, isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 22430
    const/4 v0, 0x0

    .line 22436
    :goto_7
    return-object v0

    .line 22432
    :cond_8
    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v0, :cond_15

    .line 22433
    new-instance v0, Landroid/view/View$MoreInfoHPW;

    iget v1, p0, mHoverPopupType:I

    invoke-direct {v0, p0, p0, v1}, Landroid/view/View$MoreInfoHPW;-><init>(Landroid/view/View;Landroid/view/View;I)V

    iput-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 22435
    :cond_15
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, setHoverPopupWindowSettings(I)Z

    .line 22436
    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_7
.end method

.method public getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;
    .registers 6
    .param p1, "tooltype"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 22448
    invoke-virtual {p0}, isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 22476
    :goto_8
    return-object v0

    .line 22451
    :cond_9
    iget-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v1, :cond_19

    .line 22452
    const/4 v1, 0x2

    if-ne p1, v1, :cond_32

    .line 22453
    new-instance v1, Landroid/view/View$MoreInfoHPW;

    iget v2, p0, mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/view/View$MoreInfoHPW;-><init>(Landroid/view/View;Landroid/view/View;I)V

    iput-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 22469
    :cond_19
    :goto_19
    :pswitch_19
    invoke-virtual {p0, p1}, setHoverPopupWindowSettings(I)Z

    .line 22470
    iput p1, p0, mHoverPopupToolTypeByApp:I

    .line 22471
    if-ne p1, v3, :cond_2f

    iget v1, p0, mHoverPopupType:I

    if-ne v1, v3, :cond_2f

    iget-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_2f

    .line 22473
    iget-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 22474
    iput-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 22476
    :cond_2f
    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_8

    .line 22454
    :cond_32
    if-ne p1, v3, :cond_19

    .line 22456
    iget v1, p0, mHoverPopupType:I

    packed-switch v1, :pswitch_data_4e

    goto :goto_19

    .line 22460
    :pswitch_3a
    new-instance v1, Landroid/view/View$MoreInfoHPW;

    iget v2, p0, mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/view/View$MoreInfoHPW;-><init>(Landroid/view/View;Landroid/view/View;I)V

    iput-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_19

    .line 22463
    :pswitch_44
    new-instance v1, Landroid/view/View$MoreInfoHPW;

    iget v2, p0, mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/view/View$MoreInfoHPW;-><init>(Landroid/view/View;Landroid/view/View;I)V

    iput-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_19

    .line 22456
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_3a
        :pswitch_44
    .end packed-switch
.end method

.method public getHoverPopupWindow(IZ)Landroid/widget/HoverPopupWindow;
    .registers 5
    .param p1, "tooltype"    # I
    .param p2, "calledByApp"    # Z

    .prologue
    .line 22483
    iget v0, p0, mHoverPopupToolTypeByApp:I

    .line 22485
    .local v0, "backup_HoverPopupToolTypeByApp":I
    invoke-virtual {p0, p1}, getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    .line 22486
    if-nez p2, :cond_9

    .line 22487
    iput v0, p0, mHoverPopupToolTypeByApp:I

    .line 22489
    :cond_9
    iget-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    return-object v1
.end method

.method protected getHoverUIFeatureLevel()I
    .registers 3

    .prologue
    .line 22583
    sget-boolean v0, misHoverUIFeatureLevelChecked:Z

    if-nez v0, :cond_15

    .line 22584
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, mHoverUIFeatureLevel:I

    .line 22585
    const/4 v0, 0x1

    sput-boolean v0, misHoverUIFeatureLevelChecked:Z

    .line 22587
    :cond_15
    sget v0, mHoverUIFeatureLevel:I

    return v0
.end method

.method public getId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 18278
    iget v0, p0, mID:I

    return v0
.end method

.method public getImageFilterClipRectAt(I)Landroid/view/View$ClipRect;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 4529
    iget-object v0, p0, mRenderNodeImageFilterClipRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 4530
    const/4 v0, 0x0

    .line 4532
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, mRenderNodeImageFilterClipRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$ClipRect;

    goto :goto_9
.end method

.method public getImageFilterClipRectCount()I
    .registers 2

    .prologue
    .line 4515
    iget-object v0, p0, mRenderNodeImageFilterClipRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImportantForAccessibility()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "noHideDescendants"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 8196
    iget v0, p0, mPrivateFlags2:I

    const/high16 v1, 0x700000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public final getInverseMatrix()Landroid/graphics/Matrix;
    .registers 4

    .prologue
    .line 11030
    invoke-virtual {p0}, ensureTransformationInfo()V

    .line 11031
    iget-object v1, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_15

    .line 11032
    iget-object v1, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1802(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 11034
    :cond_15
    iget-object v1, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 11035
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->getInverseMatrix(Landroid/graphics/Matrix;)V

    .line 11036
    return-object v0
.end method

.method public getIsDetachedFromWindow()Z
    .registers 2

    .prologue
    .line 22596
    iget-boolean v0, p0, mIsDetachedFromWindow:Z

    return v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .registers 5
    .param p1, "granularity"    # I

    .prologue
    .line 8707
    sparse-switch p1, :sswitch_data_66

    .line 8738
    :cond_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 8709
    :sswitch_5
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 8710
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 8711
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    .line 8714
    .local v0, "iterator":Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_4

    .line 8719
    .end local v0    # "iterator":Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :sswitch_29
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 8720
    .restart local v1    # "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 8721
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    .line 8724
    .local v0, "iterator":Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_4

    .line 8729
    .end local v0    # "iterator":Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :sswitch_4d
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 8730
    .restart local v1    # "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 8731
    invoke-static {}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    .line 8733
    .local v0, "iterator":Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_4

    .line 8707
    nop

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_29
        0x8 -> :sswitch_4d
    .end sparse-switch
.end method

.method public getKeepScreenOn()Z
    .registers 3

    .prologue
    .line 6650
    iget v0, p0, mViewFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .registers 2

    .prologue
    .line 8788
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getLabelFor()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    .line 6498
    iget v0, p0, mLabelForId:I

    return v0
.end method

.method public getLayerType()I
    .registers 2

    .prologue
    .line 14921
    iget v0, p0, mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .registers 5
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 7349
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7350
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x11

    if-ge v0, v2, :cond_1c

    invoke-direct {p0}, isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 7351
    iget v2, p0, mPrivateFlags2:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, mPrivateFlags2:I

    .line 7354
    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    iget v2, p0, mPrivateFlags2:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1b

    const/4 v1, 0x1

    goto :goto_1b
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 12353
    iget-object v0, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 11666
    iget v0, p0, mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 13355
    invoke-virtual {p0}, computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getLeftPaddingOffset()I
    .registers 2

    .prologue
    .line 15586
    const/4 v0, 0x0

    return v0
.end method

.method getListenerInfo()Landroid/view/View$ListenerInfo;
    .registers 2

    .prologue
    .line 5042
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_7

    .line 5043
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5046
    :goto_6
    return-object v0

    .line 5045
    :cond_7
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5046
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    goto :goto_6
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 12231
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_19

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 12232
    .local v0, "offset":Landroid/graphics/Point;
    :goto_8
    invoke-virtual {p0, p1, v0}, getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 12233
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 12234
    const/4 v1, 0x1

    .line 12236
    :goto_18
    return v1

    .line 12231
    .end local v0    # "offset":Landroid/graphics/Point;
    :cond_19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_8

    .line 12236
    .restart local v0    # "offset":Landroid/graphics/Point;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getLocationInWindow([I)V
    .registers 11
    .param p1, "location"    # [I

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 18030
    if-eqz p1, :cond_a

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_13

    .line 18031
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 18034
    :cond_13
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_1c

    .line 18036
    aput v6, p1, v7

    aput v6, p1, v6

    .line 18075
    :goto_1b
    return-void

    .line 18040
    :cond_1c
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 18041
    .local v0, "position":[F
    const/4 v4, 0x0

    aput v4, v0, v7

    aput v4, v0, v6

    .line 18043
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_32

    .line 18044
    invoke-virtual {p0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 18047
    :cond_32
    aget v4, v0, v6

    iget v5, p0, mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 18048
    aget v4, v0, v7

    iget v5, p0, mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 18050
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    .line 18051
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_44
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_7b

    move-object v1, v2

    .line 18052
    check-cast v1, Landroid/view/View;

    .line 18054
    .local v1, "view":Landroid/view/View;
    aget v4, v0, v6

    iget v5, v1, mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 18055
    aget v4, v0, v7

    iget v5, v1, mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 18057
    invoke-virtual {v1}, hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_68

    .line 18058
    invoke-virtual {v1}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 18061
    :cond_68
    aget v4, v0, v6

    iget v5, v1, mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 18062
    aget v4, v0, v7

    iget v5, v1, mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 18064
    iget-object v2, v1, mParent:Landroid/view/ViewParent;

    .line 18065
    goto :goto_44

    .line 18067
    .end local v1    # "view":Landroid/view/View;
    :cond_7b
    instance-of v4, v2, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_8a

    move-object v3, v2

    .line 18069
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 18070
    .local v3, "vr":Landroid/view/ViewRootImpl;
    aget v4, v0, v7

    iget v5, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 18073
    .end local v3    # "vr":Landroid/view/ViewRootImpl;
    :cond_8a
    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v6

    .line 18074
    aget v4, v0, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v7

    goto :goto_1b
.end method

.method public getLocationOnScreen([I)V
    .registers 12
    .param p1, "location"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 17984
    invoke-virtual {p0, p1}, getLocationInWindow([I)V

    .line 17986
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 17989
    .local v1, "info":Landroid/view/View$AttachInfo;
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 17990
    .local v4, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_5f

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1f

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5f

    .line 17991
    :cond_1f
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 17992
    .local v0, "atoken":Landroid/os/IBinder;
    if-eqz v1, :cond_5e

    if-eqz v0, :cond_5e

    .line 17995
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "multiwindow_facade"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 17996
    .local v2, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v3

    .line 17997
    .local v3, "pos":Landroid/graphics/Point;
    if-eqz v3, :cond_5e

    .line 17998
    aget v5, p1, v8

    int-to-float v5, v5

    iget v6, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p1, v8

    .line 17999
    aget v5, p1, v9

    int-to-float v5, v5

    iget v6, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p1, v9

    .line 18020
    .end local v0    # "atoken":Landroid/os/IBinder;
    .end local v2    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v3    # "pos":Landroid/graphics/Point;
    :cond_5e
    :goto_5e
    return-void

    .line 18006
    :cond_5f
    if-eqz v1, :cond_5e

    .line 18007
    aget v5, p1, v8

    iget v6, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v5, v6

    aput v5, p1, v8

    .line 18008
    aget v5, p1, v9

    iget v6, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v5, v6

    aput v5, p1, v9

    goto :goto_5e
.end method

.method public getLocationOnScreen()[I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "x"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "y"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 17971
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 17972
    .local v0, "location":[I
    invoke-virtual {p0, v0}, getLocationOnScreen([I)V

    .line 17973
    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 10999
    invoke-virtual {p0}, ensureTransformationInfo()V

    .line 11000
    iget-object v1, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 11001
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    .line 11002
    return-object v0
.end method

.method public final getMeasuredHeight()I
    .registers 3

    .prologue
    .line 10958
    iget v0, p0, mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .registers 2

    .prologue
    .line 10971
    iget v0, p0, mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .registers 3

    .prologue
    .line 10982
    iget v0, p0, mMeasuredWidth:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p0, mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .registers 3

    .prologue
    .line 10934
    iget v0, p0, mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .registers 2

    .prologue
    .line 10947
    iget v0, p0, mMeasuredWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 18843
    iget v0, p0, mMinHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 18872
    iget v0, p0, mMinWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .registers 2

    .prologue
    .line 6737
    iget v0, p0, mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .registers 2

    .prologue
    .line 6758
    iget v0, p0, mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .registers 2

    .prologue
    .line 6674
    iget v0, p0, mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .registers 2

    .prologue
    .line 6695
    iget v0, p0, mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .registers 2

    .prologue
    .line 6716
    iget v0, p0, mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 3

    .prologue
    .line 5127
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5128
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_6
    return-object v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .prologue
    .line 17709
    iget-object v0, p0, mLayoutInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_a

    .line 17710
    invoke-virtual {p0}, computeOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, mLayoutInsets:Landroid/graphics/Insets;

    .line 17712
    :cond_a
    iget-object v0, p0, mLayoutInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .registers 2

    .prologue
    .line 12088
    iget-object v0, p0, mOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method

.method public getOverScrollMode()I
    .registers 2

    .prologue
    .line 19693
    iget v0, p0, mOverScrollMode:I

    return v0
.end method

.method public getOverlay()Landroid/view/ViewOverlay;
    .registers 3

    .prologue
    .line 16531
    iget-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_d

    .line 16532
    new-instance v0, Landroid/view/ViewOverlay;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    .line 16534
    :cond_d
    iget-object v0, p0, mOverlay:Landroid/view/ViewOverlay;

    return-object v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .prologue
    .line 17610
    iget v0, p0, mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .registers 3

    .prologue
    .line 17664
    invoke-virtual {p0}, isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17665
    invoke-virtual {p0}, resolvePadding()V

    .line 17667
    :cond_9
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, mPaddingLeft:I

    :goto_12
    return v0

    :cond_13
    iget v0, p0, mPaddingRight:I

    goto :goto_12
.end method

.method public getPaddingLeft()I
    .registers 2

    .prologue
    .line 17621
    invoke-virtual {p0}, isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17622
    invoke-virtual {p0}, resolvePadding()V

    .line 17624
    :cond_9
    iget v0, p0, mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .prologue
    .line 17650
    invoke-virtual {p0}, isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17651
    invoke-virtual {p0}, resolvePadding()V

    .line 17653
    :cond_9
    iget v0, p0, mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .registers 3

    .prologue
    .line 17635
    invoke-virtual {p0}, isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17636
    invoke-virtual {p0}, resolvePadding()V

    .line 17638
    :cond_9
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, mPaddingRight:I

    :goto_12
    return v0

    :cond_13
    iget v0, p0, mPaddingLeft:I

    goto :goto_12
.end method

.method public getPaddingTop()I
    .registers 2

    .prologue
    .line 17599
    iget v0, p0, mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 10844
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 8352
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 8353
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    .line 8354
    .local v0, "parentView":Landroid/view/View;
    invoke-virtual {v0}, includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 8355
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    .line 8360
    .end local v0    # "parentView":Landroid/view/View;
    :goto_12
    return-object v1

    .line 8357
    .restart local v0    # "parentView":Landroid/view/View;
    :cond_13
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_12

    .line 8360
    .end local v0    # "parentView":Landroid/view/View;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getPivotX()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11314
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getPivotX()F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11356
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getPivotY()F

    move-result v0

    return v0
.end method

.method public getRawLayoutDirection()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 7296
    iget v0, p0, mPrivateFlags2:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRawTextAlignment()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 20302
    iget v0, p0, mPrivateFlags2:I

    const v1, 0xe000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public getRawTextDirection()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 20075
    iget v0, p0, mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c0

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 16843
    iget-object v0, p0, mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 11725
    iget v0, p0, mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 13369
    invoke-virtual {p0}, computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getRightPaddingOffset()I
    .registers 2

    .prologue
    .line 15600
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 4

    .prologue
    .line 17853
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_b

    .line 17854
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 17855
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_b

    .line 17866
    .end local v1    # "v":Landroid/view/View;
    :goto_a
    return-object v1

    .line 17860
    :cond_b
    move-object v0, p0

    .line 17862
    .local v0, "parent":Landroid/view/View;
    :goto_c
    iget-object v2, v0, mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1b

    iget-object v2, v0, mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1b

    .line 17863
    iget-object v0, v0, mParent:Landroid/view/ViewParent;

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_c

    :cond_1b
    move-object v1, v0

    .line 17866
    goto :goto_a
.end method

.method public getRotation()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11111
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotation()F

    move-result v0

    return v0
.end method

.method public getRotationX()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11195
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotationX()F

    move-result v0

    return v0
.end method

.method public getRotationY()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11151
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotationY()F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11240
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11276
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .registers 2

    .prologue
    .line 13479
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    goto :goto_8
.end method

.method public getScrollBarFadeDuration()I
    .registers 2

    .prologue
    .line 13503
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    goto :goto_8
.end method

.method public getScrollBarSize()I
    .registers 2

    .prologue
    .line 13527
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_f

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    goto :goto_e
.end method

.method public getScrollBarStyle()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 13587
    iget v0, p0, mViewFlags:I

    const/high16 v1, 0x3000000

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .registers 2

    .prologue
    .line 10876
    iget v0, p0, mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .registers 2

    .prologue
    .line 10887
    iget v0, p0, mScrollY:I

    return v0
.end method

.method public getSmartClipDataExtractionListener()Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .registers 2

    .prologue
    .line 22241
    iget-object v0, p0, mSmartClipDataExtractionListener:Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    return-object v0
.end method

.method public getSmartClipTags()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .registers 2

    .prologue
    .line 22263
    iget-object v0, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 16550
    const/4 v0, 0x0

    return v0
.end method

.method public getStateListAnimator()Landroid/animation/StateListAnimator;
    .registers 2

    .prologue
    .line 11975
    iget-object v0, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 3

    .prologue
    .line 18814
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    iget v0, p0, mMinHeight:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, mMinHeight:I

    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 3

    .prologue
    .line 18830
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    iget v0, p0, mMinWidth:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, mMinWidth:I

    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6
.end method

.method public getSystemUiVisibility()I
    .registers 2

    .prologue
    .line 19159
    iget v0, p0, mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 18292
    iget-object v0, p0, mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 18322
    iget-object v0, p0, mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    iget-object v0, p0, mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 18323
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTextAlignment()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 20367
    iget v0, p0, mPrivateFlags2:I

    const/high16 v1, 0xe0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getTextDirection()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 20135
    iget v0, p0, mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c00

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final getTop()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 11542
    iget v0, p0, mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 13326
    invoke-virtual {p0}, computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getTopPaddingOffset()I
    .registers 2

    .prologue
    .line 15614
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .registers 2

    .prologue
    .line 10551
    iget-object v0, p0, mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7906
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, addTouchables(Ljava/util/ArrayList;)V

    .line 7907
    return-object v0
.end method

.method public getTransitionAlpha()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11532
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8
.end method

.method public getTransitionName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 20971
    iget-object v0, p0, mTransitionName:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslationX()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11877
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public getTranslationY()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11911
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public getTranslationZ()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11941
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method public getTwHorizontalScrollbarPosition()I
    .registers 2

    .prologue
    .line 5038
    iget v0, p0, mTwHorizontalScrollbarPosition:I

    return v0
.end method

.method public getVerticalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 4788
    invoke-virtual {p0}, isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4789
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4790
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 4791
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4794
    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getVerticalScrollFactor()F
    .registers 5

    .prologue
    .line 20024
    iget v1, p0, mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_34

    .line 20025
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 20026
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_24

    .line 20028
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20031
    :cond_24
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, mVerticalScrollFactor:F

    .line 20034
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_34
    iget v1, p0, mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .registers 2

    .prologue
    .line 5020
    iget v0, p0, mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4837
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4838
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_12

    .line 4839
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4840
    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_12

    .line 4841
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 4842
    .local v2, "size":I
    if-gtz v2, :cond_12

    .line 4843
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4849
    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_12
    return v2
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 2

    .prologue
    .line 12938
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 12939
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 12941
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 2

    .prologue
    .line 17838
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 17839
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 17844
    :goto_8
    return-object v0

    .line 17841
    :cond_9
    iget-object v0, p0, mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_14

    .line 17842
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 17844
    :cond_14
    iget-object v0, p0, mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_8
.end method

.method public getVisibility()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 7125
    iget v0, p0, mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 10897
    iget v0, p0, mRight:I

    iget v1, p0, mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .registers 2

    .prologue
    .line 14403
    iget v0, p0, mWindowAttachCount:I

    return v0
.end method

.method public getWindowId()Landroid/view/WindowId;
    .registers 4

    .prologue
    .line 14420
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_6

    .line 14421
    const/4 v0, 0x0

    .line 14432
    :goto_5
    return-object v0

    .line 14423
    :cond_6
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    if-nez v0, :cond_29

    .line 14425
    :try_start_c
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    .line 14427
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Landroid/view/WindowId;

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    invoke-direct {v1, v2}, Landroid/view/WindowId;-><init>(Landroid/view/IWindowId;)V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2e

    .line 14432
    :cond_29
    :goto_29
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    goto :goto_5

    .line 14429
    :catch_2e
    move-exception v0

    goto :goto_29
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .prologue
    .line 14472
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowSystemUiVisibility()I
    .registers 2

    .prologue
    .line 19169
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 14412
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowVisibility()I
    .registers 2

    .prologue
    .line 9349
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x8

    goto :goto_8
.end method

.method public getWindowVisibleContentFrame(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 9414
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_12

    .line 9416
    :try_start_4
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3, p1}, Landroid/view/IWindowSession;->getContentFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 9436
    :goto_f
    return-void

    .line 9417
    :catch_10
    move-exception v1

    .line 9418
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 9434
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 9435
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_f
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 9369
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_32

    .line 9371
    :try_start_4
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_30

    .line 9388
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 9389
    .local v2, "insets":Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 9390
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 9391
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 9392
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 9399
    .end local v2    # "insets":Landroid/graphics/Rect;
    :goto_2f
    return-void

    .line 9372
    :catch_30
    move-exception v1

    .line 9373
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2f

    .line 9397
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_32
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 9398
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_2f
.end method

.method public getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .registers 3
    .param p1, "createIfNull"    # Z

    .prologue
    .line 9768
    iget-object v0, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    if-eqz v0, :cond_7

    .line 9769
    iget-object v0, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 9775
    :goto_6
    return-object v0

    .line 9770
    :cond_7
    if-eqz p1, :cond_13

    .line 9771
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    iput-object v0, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 9772
    iget-object v0, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    goto :goto_6

    .line 9775
    :cond_13
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getX()F
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11783
    iget v0, p0, mLeft:I

    int-to-float v0, v0

    invoke-virtual {p0}, getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11806
    iget v0, p0, mTop:I

    int-to-float v0, v0

    invoke-virtual {p0}, getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getZ()F
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11829
    invoke-virtual {p0}, getElevation()F

    move-result v0

    invoke-virtual {p0}, getTranslationZ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .registers 3
    .param p1, "off"    # Z

    .prologue
    .line 20932
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_8

    .line 20933
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    .line 20935
    :cond_8
    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 5375
    iget v1, p0, mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_33

    .line 5376
    iget v1, p0, mPrivateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, mPrivateFlags:I

    .line 5378
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_34

    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, findFocus()Landroid/view/View;

    move-result-object v0

    .line 5380
    .local v0, "oldFocus":Landroid/view/View;
    :goto_18
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_21

    .line 5381
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5384
    :cond_21
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2c

    .line 5385
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 5388
    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 5389
    invoke-virtual {p0}, refreshDrawableState()V

    .line 5391
    .end local v0    # "oldFocus":Landroid/view/View;
    :cond_33
    return-void

    .line 5378
    :cond_34
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public hasFocus()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 5560
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFocusable()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5577
    invoke-virtual {p0}, isFocusableInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5578
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    .local v1, "p":Landroid/view/ViewParent;
    :goto_9
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    move-object v0, v1

    .line 5579
    check-cast v0, Landroid/view/ViewGroup;

    .line 5580
    .local v0, "g":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5585
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_16
    :goto_16
    return v2

    .line 5578
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "p":Landroid/view/ViewParent;
    :cond_17
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_9

    .line 5585
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_1c
    iget v3, p0, mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_16

    invoke-virtual {p0}, isFocusable()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x1

    goto :goto_16
.end method

.method protected hasHoveredChild()Z
    .registers 2

    .prologue
    .line 9140
    const/4 v0, 0x0

    return v0
.end method

.method final hasIdentityMatrix()Z
    .registers 2

    .prologue
    .line 11012
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 19844
    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasOnClickListeners()Z
    .registers 3

    .prologue
    .line 5151
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5152
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected hasOpaqueScrollbars()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1000000

    .line 12917
    iget v0, p0, mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasOverlappingRendering()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 11415
    const/4 v0, 0x1

    return v0
.end method

.method public hasShadow()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 12136
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->hasShadow()Z

    move-result v0

    return v0
.end method

.method hasStaticLayer()Z
    .registers 2

    .prologue
    .line 14902
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/high16 v1, -0x80000000

    .line 7385
    iget v0, p0, mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 9255
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hideCursorControllers(Landroid/view/View;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10207
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_24

    .line 10208
    instance-of v7, p1, Landroid/widget/GridView;

    if-eqz v7, :cond_b

    .line 10227
    :cond_a
    :goto_a
    return v5

    :cond_b
    move-object v4, p1

    .line 10212
    check-cast v4, Landroid/view/ViewGroup;

    .line 10213
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 10214
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v0, :cond_a

    .line 10215
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, hideCursorControllers(Landroid/view/View;)Z

    move-result v2

    .line 10216
    .local v2, "found":Z
    if-eqz v2, :cond_21

    move v5, v6

    goto :goto_a

    .line 10214
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 10218
    .end local v0    # "childCount":I
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_24
    instance-of v7, p1, Landroid/widget/EditText;

    if-eqz v7, :cond_a

    move-object v1, p1

    .line 10219
    check-cast v1, Landroid/widget/EditText;

    .line 10220
    .local v1, "editText":Landroid/widget/EditText;
    if-eqz v1, :cond_a

    .line 10221
    invoke-virtual {v1}, Landroid/widget/EditText;->isCursorControllersShowing()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 10222
    invoke-virtual {v1}, Landroid/widget/EditText;->hideCursorControllers()V

    move v5, v6

    .line 10223
    goto :goto_a
.end method

.method public includeForAccessibility()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 8386
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_14

    .line 8387
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_13

    invoke-virtual {p0}, isImportantForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    .line 8391
    :cond_14
    return v0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4752
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4754
    .local v0, "arr":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, initializeFadingEdgeInternal(Landroid/content/res/TypedArray;)V

    .line 4756
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4757
    return-void
.end method

.method protected initializeFadingEdgeInternal(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4772
    invoke-direct {p0}, initScrollCache()V

    .line 4774
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x19

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4777
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4892
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4894
    .local v0, "arr":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 4897
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4898
    return-void
.end method

.method protected initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V
    .registers 12
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4913
    invoke-direct {p0}, initScrollCache()V

    .line 4915
    iget-object v3, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4917
    .local v3, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_12

    .line 4919
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6, p0}, Landroid/widget/ScrollBarDrawable;-><init>(Landroid/view/View;)V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4923
    :cond_12
    const/16 v6, 0x2d

    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 4925
    .local v1, "fadeScrollbars":Z
    if-nez v1, :cond_1c

    .line 4926
    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 4928
    :cond_1c
    iput-boolean v1, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 4931
    const/16 v6, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 4934
    const/16 v6, 0x2c

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 4939
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v6

    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4943
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4944
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4946
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4947
    .local v4, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5c

    .line 4948
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4951
    :cond_5c
    const/4 v6, 0x6

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 4953
    .local v0, "alwaysDraw":Z
    if-eqz v0, :cond_68

    .line 4954
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 4957
    :cond_68
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4958
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4960
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4961
    if-eqz v4, :cond_7e

    .line 4962
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4965
    :cond_7e
    const/4 v6, 0x7

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 4967
    if-eqz v0, :cond_8a

    .line 4968
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 4972
    :cond_8a
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v2

    .line 4973
    .local v2, "layoutDirection":I
    if-eqz v5, :cond_93

    .line 4974
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 4976
    :cond_93
    if-eqz v4, :cond_98

    .line 4977
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 4981
    :cond_98
    invoke-virtual {p0}, resolvePadding()V

    .line 4982
    return-void
.end method

.method protected internalSetPadding(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v5, 0x1000000

    const/4 v3, 0x0

    .line 17498
    iput p1, p0, mUserPaddingLeft:I

    .line 17499
    iput p3, p0, mUserPaddingRight:I

    .line 17500
    iput p4, p0, mUserPaddingBottom:I

    .line 17502
    iget v2, p0, mViewFlags:I

    .line 17503
    .local v2, "viewFlags":I
    const/4 v0, 0x0

    .line 17506
    .local v0, "changed":Z
    and-int/lit16 v4, v2, 0x300

    if-eqz v4, :cond_27

    .line 17507
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_1e

    .line 17508
    and-int v4, v2, v5

    if-nez v4, :cond_49

    move v1, v3

    .line 17510
    .local v1, "offset":I
    :goto_19
    iget v4, p0, mVerticalScrollbarPosition:I

    packed-switch v4, :pswitch_data_62

    .line 17526
    .end local v1    # "offset":I
    :cond_1e
    :goto_1e
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_27

    .line 17527
    and-int v4, v2, v5

    if-nez v4, :cond_5c

    :goto_26
    add-int/2addr p4, v3

    .line 17532
    :cond_27
    iget v3, p0, mPaddingLeft:I

    if-eq v3, p1, :cond_2e

    .line 17533
    const/4 v0, 0x1

    .line 17534
    iput p1, p0, mPaddingLeft:I

    .line 17536
    :cond_2e
    iget v3, p0, mPaddingTop:I

    if-eq v3, p2, :cond_35

    .line 17537
    const/4 v0, 0x1

    .line 17538
    iput p2, p0, mPaddingTop:I

    .line 17540
    :cond_35
    iget v3, p0, mPaddingRight:I

    if-eq v3, p3, :cond_3c

    .line 17541
    const/4 v0, 0x1

    .line 17542
    iput p3, p0, mPaddingRight:I

    .line 17544
    :cond_3c
    iget v3, p0, mPaddingBottom:I

    if-eq v3, p4, :cond_43

    .line 17545
    const/4 v0, 0x1

    .line 17546
    iput p4, p0, mPaddingBottom:I

    .line 17549
    :cond_43
    if-eqz v0, :cond_48

    .line 17550
    invoke-virtual {p0}, requestLayout()V

    .line 17552
    :cond_48
    return-void

    .line 17508
    :cond_49
    invoke-virtual {p0}, getVerticalScrollbarWidth()I

    move-result v1

    goto :goto_19

    .line 17512
    .restart local v1    # "offset":I
    :pswitch_4e
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 17513
    add-int/2addr p1, v1

    goto :goto_1e

    .line 17515
    :cond_56
    add-int/2addr p3, v1

    .line 17517
    goto :goto_1e

    .line 17519
    :pswitch_58
    add-int/2addr p3, v1

    .line 17520
    goto :goto_1e

    .line 17522
    :pswitch_5a
    add-int/2addr p1, v1

    goto :goto_1e

    .line 17527
    .end local v1    # "offset":I
    :cond_5c
    invoke-virtual {p0}, getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_26

    .line 17510
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_5a
        :pswitch_58
    .end packed-switch
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 12652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 12653
    return-void
.end method

.method public invalidate(IIII)V
    .registers 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 12638
    iget v7, p0, mScrollX:I

    .line 12639
    .local v7, "scrollX":I
    iget v8, p0, mScrollY:I

    .line 12640
    .local v8, "scrollY":I
    sub-int v1, p1, v7

    sub-int v2, p2, v8

    sub-int v3, p3, v7

    sub-int v4, p4, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, invalidateInternal(IIIIZZ)V

    .line 12641
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 12617
    iget v7, p0, mScrollX:I

    .line 12618
    .local v7, "scrollX":I
    iget v8, p0, mScrollY:I

    .line 12619
    .local v8, "scrollY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v7

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, v0, v8

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v7

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, invalidateInternal(IIIIZZ)V

    .line 12621
    return-void
.end method

.method invalidate(Z)V
    .registers 9
    .param p1, "invalidateCache"    # Z

    .prologue
    const/4 v1, 0x0

    .line 12668
    iget v0, p0, mRight:I

    iget v2, p0, mLeft:I

    sub-int v3, v0, v2

    iget v0, p0, mBottom:I

    iget v2, p0, mTop:I

    sub-int v4, v0, v2

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v5, p1

    invoke-virtual/range {v0 .. v6}, invalidateInternal(IIIIZZ)V

    .line 12669
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 16853
    invoke-virtual {p0, p1}, verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 16854
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 16855
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v1, p0, mScrollX:I

    .line 16856
    .local v1, "scrollX":I
    iget v2, p0, mScrollY:I

    .line 16858
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, invalidate(IIII)V

    .line 16861
    iget v3, p0, mPrivateFlags3:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, mPrivateFlags3:I

    .line 16863
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_23
    return-void
.end method

.method public invalidateFilterClipRect()V
    .registers 2

    .prologue
    .line 4489
    invoke-virtual {p0}, syncImageFilterClipRects()V

    .line 4490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 4491
    return-void
.end method

.method invalidateInheritedLayoutMode(I)V
    .registers 2
    .param p1, "layoutModeOfRoot"    # I

    .prologue
    .line 14397
    return-void
.end method

.method invalidateInternal(IIIIZZ)V
    .registers 15
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I
    .param p5, "invalidateCache"    # Z
    .param p6, "fullInvalidate"    # Z

    .prologue
    const v7, 0x8000

    const/high16 v6, -0x80000000

    .line 12673
    iget-object v4, p0, mGhostView:Landroid/view/GhostView;

    if-eqz v4, :cond_f

    .line 12674
    iget-object v4, p0, mGhostView:Landroid/view/GhostView;

    invoke-virtual {v4, p5}, Landroid/view/GhostView;->invalidate(Z)V

    .line 12720
    :cond_e
    :goto_e
    return-void

    .line 12678
    :cond_f
    invoke-direct {p0}, skipInvalidate()Z

    move-result v4

    if-nez v4, :cond_e

    .line 12682
    iget v4, p0, mPrivateFlags:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x30

    if-eq v4, v5, :cond_33

    if-eqz p5, :cond_24

    iget v4, p0, mPrivateFlags:I

    and-int/2addr v4, v7

    if-eq v4, v7, :cond_33

    :cond_24
    iget v4, p0, mPrivateFlags:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_33

    if-eqz p6, :cond_e

    invoke-virtual {p0}, isOpaque()Z

    move-result v4

    iget-boolean v5, p0, mLastIsOpaque:Z

    if-eq v4, v5, :cond_e

    .line 12686
    :cond_33
    if-eqz p6, :cond_41

    .line 12687
    invoke-virtual {p0}, isOpaque()Z

    move-result v4

    iput-boolean v4, p0, mLastIsOpaque:Z

    .line 12688
    iget v4, p0, mPrivateFlags:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, mPrivateFlags:I

    .line 12691
    :cond_41
    iget v4, p0, mPrivateFlags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, p0, mPrivateFlags:I

    .line 12693
    if-eqz p5, :cond_57

    .line 12694
    iget v4, p0, mPrivateFlags:I

    or-int/2addr v4, v6

    iput v4, p0, mPrivateFlags:I

    .line 12695
    iget v4, p0, mPrivateFlags:I

    const v5, -0x8001

    and-int/2addr v4, v5

    iput v4, p0, mPrivateFlags:I

    .line 12699
    :cond_57
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12700
    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    .line 12701
    .local v2, "p":Landroid/view/ViewParent;
    if-eqz v2, :cond_6b

    if-eqz v0, :cond_6b

    if-ge p1, p3, :cond_6b

    if-ge p2, p4, :cond_6b

    .line 12702
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 12703
    .local v1, "damage":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 12704
    invoke-interface {v2, p0, v1}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12708
    .end local v1    # "damage":Landroid/graphics/Rect;
    :cond_6b
    iget-object v4, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_80

    iget-object v4, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 12709
    invoke-direct {p0}, getProjectionReceiver()Landroid/view/View;

    move-result-object v3

    .line 12710
    .local v3, "receiver":Landroid/view/View;
    if-eqz v3, :cond_80

    .line 12711
    invoke-virtual {v3}, damageInParent()V

    .line 12716
    .end local v3    # "receiver":Landroid/view/View;
    :cond_80
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, getZ()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e

    .line 12717
    invoke-direct {p0}, damageShadowReceiver()V

    goto/16 :goto_e
.end method

.method public invalidateOutline()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12097
    iget v0, p0, mPrivateFlags3:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mPrivateFlags3:I

    .line 12099
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 12100
    invoke-virtual {p0, v1, v1}, invalidateViewProperty(ZZ)V

    .line 12101
    return-void
.end method

.method protected invalidateParentCaches()V
    .registers 4

    .prologue
    .line 12841
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 12842
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, mPrivateFlags:I

    .line 12844
    :cond_11
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .registers 3

    .prologue
    .line 12856
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_14

    .line 12857
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, invalidate(Z)V

    .line 12859
    :cond_14
    return-void
.end method

.method protected invalidateParentIfNeededAndWasQuickRejected()V
    .registers 3

    .prologue
    .line 12865
    iget v0, p0, mPrivateFlags2:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 12867
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 12869
    :cond_a
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .registers 5
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    .prologue
    .line 12779
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3a

    .line 12782
    :cond_14
    if-eqz p1, :cond_19

    .line 12783
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 12785
    :cond_19
    if-eqz p2, :cond_21

    .line 12786
    iget v0, p0, mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mPrivateFlags:I

    .line 12788
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 12792
    :goto_25
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    invoke-virtual {p0}, getZ()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_39

    .line 12793
    invoke-direct {p0}, damageShadowReceiver()V

    .line 12795
    :cond_39
    return-void

    .line 12790
    :cond_3a
    invoke-virtual {p0}, damageInParent()V

    goto :goto_25
.end method

.method public isAccessibilityFocused()Z
    .registers 3

    .prologue
    .line 7931
    iget v0, p0, mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isAccessibilitySelectionExtendable()Z
    .registers 2

    .prologue
    .line 8655
    const/4 v0, 0x0

    return v0
.end method

.method public isActionableForAccessibility()Z
    .registers 2

    .prologue
    .line 8404
    invoke-virtual {p0}, isClickable()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, isLongClickable()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, isFocusable()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isActivated()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 17822
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .prologue
    .line 7428
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isClickable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7496
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDirty()Z
    .registers 3

    .prologue
    .line 11610
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x600000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isDrawingCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 15033
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDuplicateParentStateEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x400000

    .line 14788
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7148
    iget v0, p0, mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFingerHovered()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 10287
    iget v0, p0, mTouchwizFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFingerHoveredInAppWidget()Z
    .registers 2

    .prologue
    .line 10262
    iget-boolean v0, p0, mIsSetFingerHovedInAppWidget:Z

    return v0
.end method

.method public final isFocusable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 7711
    iget v1, p0, mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isFocusableInTouchMode()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x40000

    .line 7724
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFocused()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 6554
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x10000000

    .line 7273
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isHardwareAccelerated()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 15669
    iget-boolean v1, p0, mYouTubePacakge:Z

    if-eqz v1, :cond_6

    .line 15671
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 13253
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHorizontalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 13383
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHovered()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 10105
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected isHoveringUIEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 22536
    sget v0, sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_21

    .line 22537
    sget v0, sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, -0x10

    sput v0, sHoverUIEnableFlag:I

    .line 22538
    sget v2, sHoverUIEnableFlag:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    :goto_1e
    or-int/2addr v0, v2

    sput v0, sHoverUIEnableFlag:I

    .line 22542
    :cond_21
    sget v0, sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v1, :cond_2a

    :goto_27
    return v1

    .line 22538
    :cond_28
    const/4 v0, 0x2

    goto :goto_1e

    .line 22542
    :cond_2a
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public isImportantForAccessibility()Z
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8322
    iget v2, p0, mPrivateFlags2:I

    const/high16 v5, 0x700000

    and-int/2addr v2, v5

    shr-int/lit8 v0, v2, 0x14

    .line 8324
    .local v0, "mode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    if-ne v0, v6, :cond_10

    .line 8339
    :cond_f
    :goto_f
    return v3

    .line 8330
    :cond_10
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    .line 8331
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_12
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_24

    move-object v2, v1

    .line 8332
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, getImportantForAccessibility()I

    move-result v2

    if-eq v2, v6, :cond_f

    .line 8336
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_12

    .line 8339
    :cond_24
    if-eq v0, v4, :cond_3e

    invoke-virtual {p0}, isActionableForAccessibility()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-direct {p0}, hasListenersForAccessibility()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {p0}, getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-nez v2, :cond_3e

    invoke-virtual {p0}, getAccessibilityLiveRegion()I

    move-result v2

    if-eqz v2, :cond_41

    :cond_3e
    move v2, v4

    :goto_3f
    move v3, v2

    goto :goto_f

    :cond_41
    move v2, v3

    goto :goto_3f
.end method

.method public isInDialog()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 10161
    iget-object v2, p0, mRootViewCheckForDialog:Landroid/view/View;

    if-nez v2, :cond_2b

    .line 10162
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, mRootViewCheckForDialog:Landroid/view/View;

    .line 10163
    iget-object v2, p0, mRootViewCheckForDialog:Landroid/view/View;

    if-nez v2, :cond_11

    .line 10168
    :goto_10
    return v1

    .line 10164
    :cond_11
    iget-object v2, p0, mRootViewCheckForDialog:Landroid/view/View;

    invoke-virtual {v2}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 10165
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2e

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v3, :cond_2e

    iput-boolean v1, p0, mIsInDialog:Z

    .line 10168
    :cond_2b
    :goto_2b
    iget-boolean v1, p0, mIsInDialog:Z

    goto :goto_10

    .line 10166
    :cond_2e
    iput-boolean v3, p0, mIsInDialog:Z

    goto :goto_2b
.end method

.method public isInEditMode()Z
    .registers 2

    .prologue
    .line 15550
    const/4 v0, 0x0

    return v0
.end method

.method public isInLayout()Z
    .registers 3

    .prologue
    .line 18496
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 18497
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isInScrollingContainer()Z
    .registers 3

    .prologue
    .line 10464
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 10465
    .local v0, "p":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_1a

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    move-object v1, v0

    .line 10466
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 10467
    const/4 v1, 0x1

    .line 10471
    :goto_14
    return v1

    .line 10469
    :cond_15
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 10471
    :cond_1a
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isInTouchMode()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 9505
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 9506
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 9508
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    goto :goto_8
.end method

.method public isLaidOut()Z
    .registers 3

    .prologue
    .line 7436
    iget v0, p0, mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isLayoutDirectionInherited()Z
    .registers 3

    .prologue
    .line 14240
    invoke-virtual {p0}, getRawLayoutDirection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isLayoutDirectionResolved()Z
    .registers 3

    .prologue
    .line 14247
    iget v0, p0, mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLayoutRequested()Z
    .registers 3

    .prologue
    .line 16653
    iget v0, p0, mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLayoutRtl()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 7368
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLongClickable()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200000

    .line 7523
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected isMultiPenSelectionEnabled()Z
    .registers 3

    .prologue
    .line 22787
    sget v0, sSpenUspLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 22792
    const/4 v0, 0x1

    .line 22794
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isMultiWindow()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 22716
    invoke-direct {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 22717
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_e

    .line 22718
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    .line 22720
    :cond_e
    return v1
.end method

.method public isNestedScrollingEnabled()Z
    .registers 3

    .prologue
    .line 19751
    iget v0, p0, mPrivateFlags3:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOpaque()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x1800000

    .line 12884
    iget v0, p0, mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, getFinalAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 2

    .prologue
    .line 15572
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .registers 3

    .prologue
    const/high16 v1, -0x80000000

    .line 17680
    iget v0, p0, mUserPaddingStart:I

    if-ne v0, v1, :cond_a

    iget v0, p0, mUserPaddingEnd:I

    if-eq v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isPaddingResolved()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20000000

    .line 14256
    iget v0, p0, mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isPressed()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7605
    iget v0, p0, mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRootNamespace()Z
    .registers 2

    .prologue
    .line 18263
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSaveEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10000

    .line 7618
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSaveFromParentEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20000000

    .line 7682
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScaleWindow()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 22729
    invoke-direct {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 22730
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_1d

    .line 22731
    invoke-virtual {p0}, isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v1, 0x1

    .line 22735
    :cond_1d
    return v1
.end method

.method public isScrollContainer()Z
    .registers 3

    .prologue
    .line 6578
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScrollbarFadingEnabled()Z
    .registers 2

    .prologue
    .line 13467
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_c

    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSelected()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 17779
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShown()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 6778
    move-object v0, p0

    .line 6781
    .local v0, "current":Landroid/view/View;
    :cond_2
    iget v3, v0, mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_9

    .line 6794
    :cond_8
    :goto_8
    return v2

    .line 6784
    :cond_9
    iget-object v1, v0, mParent:Landroid/view/ViewParent;

    .line 6785
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_8

    .line 6788
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_13

    .line 6789
    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    move-object v0, v1

    .line 6791
    check-cast v0, Landroid/view/View;

    .line 6792
    if-nez v0, :cond_2

    goto :goto_8
.end method

.method public isSoundEffectsEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x8000000

    .line 7244
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isTextAlignmentInherited()Z
    .registers 2

    .prologue
    .line 20500
    invoke-virtual {p0}, getRawTextAlignment()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTextAlignmentResolved()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10000

    .line 20507
    iget v0, p0, mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isTextDirectionInherited()Z
    .registers 2

    .prologue
    .line 20263
    invoke-virtual {p0}, getRawTextDirection()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTextDirectionResolved()Z
    .registers 3

    .prologue
    .line 20270
    iget v0, p0, mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isTextSelectionEnabled()Z
    .registers 5

    .prologue
    const/16 v1, 0x10

    .line 22549
    sget v0, sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_22

    .line 22550
    sget v0, sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, -0xf1

    sput v0, sHoverUIEnableFlag:I

    .line 22551
    sget v2, sHoverUIEnableFlag:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_1f
    or-int/2addr v0, v2

    sput v0, sHoverUIEnableFlag:I

    .line 22555
    :cond_22
    sget v0, sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_29
    return v0

    .line 22551
    :cond_2a
    const/16 v0, 0x20

    goto :goto_1f

    .line 22555
    :cond_2d
    const/4 v0, 0x0

    goto :goto_29
.end method

.method protected isTwHorizontalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 13933
    const/4 v0, 0x0

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 8875
    iget-object v1, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->state:I

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 13290
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVerticalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 13413
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 13923
    const/4 v0, 0x0

    return v0
.end method

.method protected isVisibleToUser()Z
    .registers 2

    .prologue
    .line 6176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 9
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 6197
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_c

    .line 6199
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v5, :cond_d

    .line 6228
    :cond_c
    :goto_c
    return v4

    .line 6204
    :cond_d
    move-object v0, p0

    .line 6205
    :goto_e
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_2e

    move-object v2, v0

    .line 6206
    check-cast v2, Landroid/view/View;

    .line 6209
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, getAlpha()F

    move-result v5

    cmpg-float v5, v5, v6

    if-lez v5, :cond_c

    invoke-virtual {v2}, getTransitionAlpha()F

    move-result v5

    cmpg-float v5, v5, v6

    if-lez v5, :cond_c

    invoke-virtual {v2}, getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    .line 6213
    iget-object v0, v2, mParent:Landroid/view/ViewParent;

    .line 6214
    .local v0, "current":Landroid/view/ViewParent;
    goto :goto_e

    .line 6216
    .end local v0    # "current":Landroid/view/ViewParent;
    .end local v2    # "view":Landroid/view/View;
    :cond_2e
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 6217
    .local v3, "visibleRect":Landroid/graphics/Rect;
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v5, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 6218
    .local v1, "offset":Landroid/graphics/Point;
    invoke-virtual {p0, v3, v1}, getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6222
    if-eqz p1, :cond_4c

    .line 6223
    iget v4, v1, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 6224
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    goto :goto_c

    .line 6226
    :cond_4c
    const/4 v4, 0x1

    goto :goto_c
.end method

.method public isWritingBuddyEnabled()Z
    .registers 2

    .prologue
    .line 9712
    iget-boolean v0, p0, mIsWritingBuddyEnabled:Z

    return v0
.end method

.method protected isWritingBuddyFeatureEnabled()Z
    .registers 2

    .prologue
    .line 22576
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 17187
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 17188
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 17190
    :cond_9
    iget-object v0, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    if-eqz v0, :cond_12

    .line 17191
    iget-object v0, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v0}, Landroid/animation/StateListAnimator;->jumpToCurrentState()V

    .line 17193
    :cond_12
    return-void
.end method

.method public layout(IIII)V
    .registers 22
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 16697
    move-object/from16 v0, p0

    iget v1, v0, mPrivateFlags3:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1f

    .line 16698
    move-object/from16 v0, p0

    iget v1, v0, mOldWidthMeasureSpec:I

    move-object/from16 v0, p0

    iget v3, v0, mOldHeightMeasureSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, onMeasure(II)V

    .line 16699
    move-object/from16 v0, p0

    iget v1, v0, mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x9

    move-object/from16 v0, p0

    iput v1, v0, mPrivateFlags3:I

    .line 16702
    :cond_1f
    move-object/from16 v0, p0

    iget v9, v0, mLeft:I

    .line 16703
    .local v9, "oldL":I
    move-object/from16 v0, p0

    iget v10, v0, mTop:I

    .line 16704
    .local v10, "oldT":I
    move-object/from16 v0, p0

    iget v12, v0, mBottom:I

    .line 16705
    .local v12, "oldB":I
    move-object/from16 v0, p0

    iget v11, v0, mRight:I

    .line 16707
    .local v11, "oldR":I
    move-object/from16 v0, p0

    iget-object v1, v0, mParent:Landroid/view/ViewParent;

    invoke-static {v1}, isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-direct/range {p0 .. p4}, setOpticalFrame(IIII)Z

    move-result v2

    .line 16710
    .local v2, "changed":Z
    :goto_3d
    if-nez v2, :cond_49

    move-object/from16 v0, p0

    iget v1, v0, mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_9a

    :cond_49
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 16711
    invoke-virtual/range {v1 .. v6}, onLayout(ZIIII)V

    .line 16712
    move-object/from16 v0, p0

    iget v1, v0, mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    move-object/from16 v0, p0

    iput v1, v0, mPrivateFlags:I

    .line 16714
    move-object/from16 v0, p0

    iget-object v14, v0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 16715
    .local v14, "li":Landroid/view/View$ListenerInfo;
    if-eqz v14, :cond_9a

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 16716
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 16718
    .local v15, "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 16719
    .local v16, "numListeners":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7b
    move/from16 v0, v16

    if-ge v13, v0, :cond_9a

    .line 16720
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-interface/range {v3 .. v12}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 16719
    add-int/lit8 v13, v13, 0x1

    goto :goto_7b

    .line 16707
    .end local v2    # "changed":Z
    .end local v13    # "i":I
    .end local v14    # "li":Landroid/view/View$ListenerInfo;
    .end local v15    # "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v16    # "numListeners":I
    :cond_95
    invoke-virtual/range {p0 .. p4}, setFrame(IIII)Z

    move-result v2

    goto :goto_3d

    .line 16725
    .restart local v2    # "changed":Z
    :cond_9a
    move-object/from16 v0, p0

    iget v1, v0, mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    move-object/from16 v0, p0

    iput v1, v0, mPrivateFlags:I

    .line 16726
    move-object/from16 v0, p0

    iget v1, v0, mPrivateFlags3:I

    or-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, mPrivateFlags3:I

    .line 16727
    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .registers 2

    .prologue
    const/16 v0, 0x800

    .line 7109
    invoke-virtual {p0, v0, v0}, setFlags(II)V

    .line 7110
    return-void
.end method

.method public final measure(II)V
    .registers 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 18570
    invoke-static/range {p0 .. p0}, isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v8

    .line 18571
    .local v8, "optical":Z
    move-object/from16 v0, p0

    iget-object v9, v0, mParent:Landroid/view/ViewParent;

    invoke-static {v9}, isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v9

    if-eq v8, v9, :cond_30

    .line 18572
    invoke-virtual/range {p0 .. p0}, getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 18573
    .local v3, "insets":Landroid/graphics/Insets;
    iget v9, v3, Landroid/graphics/Insets;->left:I

    iget v12, v3, Landroid/graphics/Insets;->right:I

    add-int v7, v9, v12

    .line 18574
    .local v7, "oWidth":I
    iget v9, v3, Landroid/graphics/Insets;->top:I

    iget v12, v3, Landroid/graphics/Insets;->bottom:I

    add-int v6, v9, v12

    .line 18575
    .local v6, "oHeight":I
    if-eqz v8, :cond_21

    neg-int v7, v7

    .end local v7    # "oWidth":I
    :cond_21
    move/from16 v0, p1

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p1

    .line 18576
    if-eqz v8, :cond_2a

    neg-int v6, v6

    .end local v6    # "oHeight":I
    :cond_2a
    move/from16 v0, p2

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p2

    .line 18580
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_30
    move/from16 v0, p1

    int-to-long v12, v0

    const/16 v9, 0x20

    shl-long/2addr v12, v9

    move/from16 v0, p2

    int-to-long v14, v0

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    or-long v4, v12, v14

    .line 18581
    .local v4, "key":J
    move-object/from16 v0, p0

    iget-object v9, v0, mMeasureCache:Landroid/util/LongSparseLongArray;

    if-nez v9, :cond_52

    new-instance v9, Landroid/util/LongSparseLongArray;

    const/4 v12, 0x2

    invoke-direct {v9, v12}, Landroid/util/LongSparseLongArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v9, v0, mMeasureCache:Landroid/util/LongSparseLongArray;

    .line 18583
    :cond_52
    move-object/from16 v0, p0

    iget v9, v0, mPrivateFlags:I

    and-int/lit16 v9, v9, 0x1000

    const/16 v12, 0x1000

    if-eq v9, v12, :cond_6c

    move-object/from16 v0, p0

    iget v9, v0, mOldWidthMeasureSpec:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_6c

    move-object/from16 v0, p0

    iget v9, v0, mOldHeightMeasureSpec:I

    move/from16 v0, p2

    if-eq v0, v9, :cond_f0

    .line 18588
    :cond_6c
    move-object/from16 v0, p0

    iget v9, v0, mPrivateFlags:I

    and-int/lit16 v9, v9, -0x801

    move-object/from16 v0, p0

    iput v9, v0, mPrivateFlags:I

    .line 18590
    move-object/from16 v0, p0

    iget-boolean v9, v0, mSkipRtlCheck:Z

    if-nez v9, :cond_7f

    invoke-virtual/range {p0 .. p0}, resolveRtlPropertiesIfNeeded()Z

    .line 18592
    :cond_7f
    move-object/from16 v0, p0

    iget v9, v0, mPrivateFlags:I

    and-int/lit16 v9, v9, 0x1000

    const/16 v12, 0x1000

    if-ne v9, v12, :cond_bf

    const/4 v2, -0x1

    .line 18594
    .local v2, "cacheIndex":I
    :goto_8a
    if-ltz v2, :cond_90

    sget-boolean v9, sIgnoreMeasureCache:Z

    if-eqz v9, :cond_c8

    .line 18596
    :cond_90
    invoke-virtual/range {p0 .. p2}, onMeasure(II)V

    .line 18597
    move-object/from16 v0, p0

    iget v9, v0, mPrivateFlags3:I

    and-int/lit8 v9, v9, -0x9

    move-object/from16 v0, p0

    iput v9, v0, mPrivateFlags3:I

    .line 18607
    :goto_9d
    move-object/from16 v0, p0

    iget v9, v0, mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    const/16 v12, 0x800

    if-eq v9, v12, :cond_e6

    .line 18609
    const-string v9, "1"

    const-string/jumbo v12, "sys.multiwindow.running"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e6

    .line 18611
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v9, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 18592
    .end local v2    # "cacheIndex":I
    :cond_bf
    move-object/from16 v0, p0

    iget-object v9, v0, mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v9, v4, v5}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v2

    goto :goto_8a

    .line 18599
    .restart local v2    # "cacheIndex":I
    :cond_c8
    move-object/from16 v0, p0

    iget-object v9, v0, mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v9, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v10

    .line 18601
    .local v10, "value":J
    const/16 v9, 0x20

    shr-long v12, v10, v9

    long-to-int v9, v12

    long-to-int v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, setMeasuredDimensionRaw(II)V

    .line 18602
    move-object/from16 v0, p0

    iget v9, v0, mPrivateFlags3:I

    or-int/lit8 v9, v9, 0x8

    move-object/from16 v0, p0

    iput v9, v0, mPrivateFlags3:I

    goto :goto_9d

    .line 18616
    .end local v10    # "value":J
    :cond_e6
    move-object/from16 v0, p0

    iget v9, v0, mPrivateFlags:I

    or-int/lit16 v9, v9, 0x2000

    move-object/from16 v0, p0

    iput v9, v0, mPrivateFlags:I

    .line 18619
    .end local v2    # "cacheIndex":I
    :cond_f0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mOldWidthMeasureSpec:I

    .line 18620
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, mOldHeightMeasureSpec:I

    .line 18622
    move-object/from16 v0, p0

    iget-object v9, v0, mMeasureCache:Landroid/util/LongSparseLongArray;

    move-object/from16 v0, p0

    iget v12, v0, mMeasuredWidth:I

    int-to-long v12, v12

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, mMeasuredHeight:I

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    or-long/2addr v12, v14

    invoke-virtual {v9, v4, v5, v12, v13}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 18624
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .registers 4
    .param p1, "force"    # Z

    .prologue
    .line 9487
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9488
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_19

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_19

    .line 9489
    if-nez p1, :cond_16

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_16

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_16

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_19

    .line 9491
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 9494
    :cond_19
    return-void
.end method

.method notifyGlobalFocusCleared(Landroid/view/View;)V
    .registers 4
    .param p1, "oldFocus"    # Landroid/view/View;

    .prologue
    .line 5526
    if-eqz p1, :cond_e

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_e

    .line 5527
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 5529
    :cond_e
    return-void
.end method

.method public notifySubtreeAccessibilityStateChangedIfNeeded()V
    .registers 5

    .prologue
    const/high16 v2, 0x8000000

    .line 8454
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8469
    :cond_e
    :goto_e
    return-void

    .line 8457
    :cond_f
    iget v1, p0, mPrivateFlags2:I

    and-int/2addr v1, v2

    if-nez v1, :cond_e

    .line 8458
    iget v1, p0, mPrivateFlags2:I

    or-int/2addr v1, v2

    iput v1, p0, mPrivateFlags2:I

    .line 8459
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_e

    .line 8461
    :try_start_1d
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    const/4 v2, 0x1

    invoke-interface {v1, p0, p0, v2}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_23
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_e

    .line 8463
    :catch_24
    move-exception v0

    .line 8464
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public notifyViewAccessibilityStateChangedIfNeeded(I)V
    .registers 4
    .param p1, "changeType"    # I

    .prologue
    .line 8432
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 8440
    :goto_c
    return-void

    .line 8435
    :cond_d
    iget-object v0, p0, mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    if-nez v0, :cond_19

    .line 8436
    new-instance v0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    .line 8439
    :cond_19
    iget-object v0, p0, mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    invoke-virtual {v0, p1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->runOrPost(I)V

    goto :goto_c
.end method

.method public offsetLeftAndRight(I)V
    .registers 11
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x0

    .line 12295
    if-eqz p1, :cond_2d

    .line 12296
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v0

    .line 12297
    .local v0, "matrixIsIdentity":Z
    if-eqz v0, :cond_57

    .line 12298
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 12299
    invoke-virtual {p0, v8, v8}, invalidateViewProperty(ZZ)V

    .line 12321
    :cond_12
    :goto_12
    iget v5, p0, mLeft:I

    add-int/2addr v5, p1

    iput v5, p0, mLeft:I

    .line 12322
    iget v5, p0, mRight:I

    add-int/2addr v5, p1

    iput v5, p0, mRight:I

    .line 12323
    iget-object v5, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    .line 12324
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 12325
    invoke-virtual {p0, v8, v8}, invalidateViewProperty(ZZ)V

    .line 12332
    :goto_2a
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 12334
    .end local v0    # "matrixIsIdentity":Z
    :cond_2d
    return-void

    .line 12301
    .restart local v0    # "matrixIsIdentity":Z
    :cond_2e
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    .line 12302
    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_12

    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_12

    .line 12303
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v5, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 12306
    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_50

    .line 12307
    iget v5, p0, mLeft:I

    add-int v2, v5, p1

    .line 12308
    .local v2, "minLeft":I
    iget v1, p0, mRight:I

    .line 12313
    .local v1, "maxRight":I
    :goto_42
    sub-int v5, v1, v2

    iget v6, p0, mBottom:I

    iget v7, p0, mTop:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 12314
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_12

    .line 12310
    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    :cond_50
    iget v2, p0, mLeft:I

    .line 12311
    .restart local v2    # "minLeft":I
    iget v5, p0, mRight:I

    add-int v1, v5, p1

    .restart local v1    # "maxRight":I
    goto :goto_42

    .line 12318
    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_57
    invoke-virtual {p0, v8, v8}, invalidateViewProperty(ZZ)V

    goto :goto_12

    .line 12327
    :cond_5b
    if-nez v0, :cond_61

    .line 12328
    const/4 v5, 0x1

    invoke-virtual {p0, v8, v5}, invalidateViewProperty(ZZ)V

    .line 12330
    :cond_61
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    goto :goto_2a
.end method

.method public offsetTopAndBottom(I)V
    .registers 11
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x0

    .line 12245
    if-eqz p1, :cond_2d

    .line 12246
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v0

    .line 12247
    .local v0, "matrixIsIdentity":Z
    if-eqz v0, :cond_59

    .line 12248
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 12249
    invoke-virtual {p0, v8, v8}, invalidateViewProperty(ZZ)V

    .line 12274
    :cond_12
    :goto_12
    iget v6, p0, mTop:I

    add-int/2addr v6, p1

    iput v6, p0, mTop:I

    .line 12275
    iget v6, p0, mBottom:I

    add-int/2addr v6, p1

    iput v6, p0, mBottom:I

    .line 12276
    iget-object v6, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v6, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 12277
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 12278
    invoke-virtual {p0, v8, v8}, invalidateViewProperty(ZZ)V

    .line 12285
    :goto_2a
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 12287
    .end local v0    # "matrixIsIdentity":Z
    :cond_2d
    return-void

    .line 12251
    .restart local v0    # "matrixIsIdentity":Z
    :cond_2e
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    .line 12252
    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_12

    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_12

    .line 12253
    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v6, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 12257
    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_51

    .line 12258
    iget v6, p0, mTop:I

    add-int v2, v6, p1

    .line 12259
    .local v2, "minTop":I
    iget v1, p0, mBottom:I

    .line 12260
    .local v1, "maxBottom":I
    move v5, p1

    .line 12266
    .local v5, "yLoc":I
    :goto_43
    iget v6, p0, mRight:I

    iget v7, p0, mLeft:I

    sub-int/2addr v6, v7

    sub-int v7, v1, v2

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 12267
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_12

    .line 12262
    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v5    # "yLoc":I
    :cond_51
    iget v2, p0, mTop:I

    .line 12263
    .restart local v2    # "minTop":I
    iget v6, p0, mBottom:I

    add-int v1, v6, p1

    .line 12264
    .restart local v1    # "maxBottom":I
    const/4 v5, 0x0

    .restart local v5    # "yLoc":I
    goto :goto_43

    .line 12271
    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "yLoc":I
    :cond_59
    invoke-virtual {p0, v8, v8}, invalidateViewProperty(ZZ)V

    goto :goto_12

    .line 12280
    :cond_5d
    if-nez v0, :cond_63

    .line 12281
    const/4 v6, 0x1

    invoke-virtual {p0, v8, v6}, invalidateViewProperty(ZZ)V

    .line 12283
    :cond_63
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    goto :goto_2a
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 18974
    iget v0, p0, mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 18975
    return-void
.end method

.method protected onAnimationStart()V
    .registers 3

    .prologue
    .line 18962
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 18963
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 6929
    iget v0, p0, mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_15

    .line 6933
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6934
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 6942
    .end local p1    # "insets":Landroid/view/WindowInsets;
    :cond_14
    :goto_14
    return-object p1

    .line 6938
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_15
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, fitSystemWindowsInt(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6939
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_14
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 14009
    iget v1, p0, mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    .line 14010
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 14013
    :cond_b
    iget v1, p0, mPrivateFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1d

    .line 14014
    invoke-direct {p0}, initialAwakenScrollBars()Z

    .line 14015
    iget v1, p0, mPrivateFlags:I

    const v2, -0x8000001

    and-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 14018
    :cond_1d
    iget v1, p0, mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, mPrivateFlags3:I

    .line 14020
    invoke-virtual {p0}, jumpDrawablesToCurrentState()V

    .line 14022
    invoke-virtual {p0}, resetSubtreeAccessibilityStateChanged()V

    .line 14025
    invoke-direct {p0}, rebuildOutline()V

    .line 14027
    invoke-virtual {p0}, isFocused()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 14028
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 14029
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 14031
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_39
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsDetachedFromWindow:Z

    .line 14032
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .registers 2

    .prologue
    .line 14609
    invoke-direct {p0}, removePerformClickCallback()V

    .line 14610
    invoke-virtual {p0}, cancelLongPress()V

    .line 14611
    iget v0, p0, mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, mPrivateFlags3:I

    .line 14612
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 9672
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 19513
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 9463
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 9890
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 11
    .param p1, "extraSpace"    # I

    .prologue
    const/high16 v8, 0x400000

    const/4 v7, 0x0

    .line 17091
    iget v6, p0, mViewFlags:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_17

    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_17

    .line 17093
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, p1}, onCreateDrawableState(I)[I

    move-result-object v0

    .line 17149
    :cond_16
    :goto_16
    return-object v0

    .line 17098
    :cond_17
    iget v2, p0, mPrivateFlags:I

    .line 17100
    .local v2, "privateFlags":I
    const/4 v5, 0x0

    .line 17101
    .local v5, "viewStateIndex":I
    and-int/lit16 v6, v2, 0x4000

    if-eqz v6, :cond_20

    or-int/lit8 v5, v5, 0x10

    .line 17102
    :cond_20
    iget v6, p0, mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_28

    or-int/lit8 v5, v5, 0x8

    .line 17103
    :cond_28
    invoke-virtual {p0}, isFocused()Z

    move-result v6

    if-eqz v6, :cond_30

    or-int/lit8 v5, v5, 0x4

    .line 17104
    :cond_30
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_36

    or-int/lit8 v5, v5, 0x2

    .line 17105
    :cond_36
    invoke-virtual {p0}, hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_3e

    or-int/lit8 v5, v5, 0x1

    .line 17106
    :cond_3e
    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v2

    if-eqz v6, :cond_45

    or-int/lit8 v5, v5, 0x20

    .line 17107
    :cond_45
    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_57

    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v6, :cond_57

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 17112
    or-int/lit8 v5, v5, 0x40

    .line 17114
    :cond_57
    const/high16 v6, 0x10000000

    and-int/2addr v6, v2

    if-eqz v6, :cond_5e

    or-int/lit16 v5, v5, 0x80

    .line 17116
    :cond_5e
    iget v3, p0, mPrivateFlags2:I

    .line 17117
    .local v3, "privateFlags2":I
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_66

    or-int/lit16 v5, v5, 0x100

    .line 17118
    :cond_66
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_6c

    or-int/lit16 v5, v5, 0x200

    .line 17120
    :cond_6c
    iget v4, p0, mTouchwizFlags:I

    .line 17121
    .local v4, "touchwizFlags":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_74

    or-int/lit16 v5, v5, 0x400

    .line 17123
    :cond_74
    sget-object v6, VIEW_STATE_SETS:[[I

    aget-object v0, v6, v5

    .line 17137
    .local v0, "drawableState":[I
    if-eqz p1, :cond_16

    .line 17142
    if-eqz v0, :cond_86

    .line 17143
    array-length v6, v0

    add-int/2addr v6, p1

    new-array v1, v6, [I

    .line 17144
    .local v1, "fullState":[I
    array-length v6, v0

    invoke-static {v0, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    :goto_84
    move-object v0, v1

    .line 17149
    goto :goto_16

    .line 17146
    .end local v1    # "fullState":[I
    :cond_86
    new-array v1, p1, [I

    .restart local v1    # "fullState":[I
    goto :goto_84
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 9695
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 14339
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 14361
    iget v0, p0, mHoverPopupType:I

    if-eqz v0, :cond_10

    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_10

    .line 14362
    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 14363
    iput-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 14367
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsDetachedFromWindow:Z

    .line 14368
    iput-object v2, p0, mRootViewCheckForDialog:Landroid/view/View;

    .line 14370
    iget v0, p0, mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 14371
    iget v0, p0, mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, mPrivateFlags3:I

    .line 14373
    invoke-direct {p0}, removeUnsetPressCallback()V

    .line 14374
    invoke-direct {p0}, removeLongPressCallback()V

    .line 14375
    invoke-direct {p0}, removePerformClickCallback()V

    .line 14376
    invoke-direct {p0}, removeSendViewScrolledAccessibilityEventCallback()V

    .line 14377
    invoke-virtual {p0}, stopNestedScroll()V

    .line 14381
    invoke-virtual {p0}, jumpDrawablesToCurrentState()V

    .line 14383
    invoke-virtual {p0}, destroyDrawingCache()V

    .line 14385
    invoke-direct {p0}, cleanupDraw()V

    .line 14386
    iput-object v2, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    .line 14387
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .prologue
    .line 9311
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 19474
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 13982
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 13952
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13953
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13954
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .registers 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 13758
    move-object/from16 v0, p0

    iget-object v9, v0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 13759
    .local v9, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v9, :cond_c

    .line 13761
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v18, v0

    .line 13763
    .local v18, "state":I
    if-nez v18, :cond_d

    .line 13882
    .end local v18    # "state":I
    :cond_c
    :goto_c
    return-void

    .line 13767
    .restart local v18    # "state":I
    :cond_d
    const/4 v14, 0x0

    .line 13769
    .local v14, "invalidate":Z
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_158

    .line 13771
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v2, :cond_1c

    .line 13772
    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 13775
    :cond_1c
    iget-object v0, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v19, v0

    .line 13778
    .local v19, "values":[F
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_14a

    .line 13780
    const/4 v2, 0x0

    iput v2, v9, Landroid/view/View$ScrollabilityCache;->state:I

    .line 13788
    :goto_2f
    const/4 v14, 0x1

    .line 13796
    .end local v19    # "values":[F
    :goto_30
    move-object/from16 v0, p0

    iget v0, v0, mViewFlags:I

    move/from16 v22, v0

    .line 13798
    .local v22, "viewFlags":I
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_161

    invoke-virtual/range {p0 .. p0}, isTwHorizontalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_161

    const/4 v10, 0x1

    .line 13801
    .local v10, "drawHorizontalScrollBar":Z
    :goto_45
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_164

    invoke-virtual/range {p0 .. p0}, isVerticalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_164

    const/4 v11, 0x1

    .line 13805
    .local v11, "drawVerticalScrollBar":Z
    :goto_54
    if-nez v11, :cond_58

    if-eqz v10, :cond_c

    .line 13806
    :cond_58
    move-object/from16 v0, p0

    iget v2, v0, mRight:I

    move-object/from16 v0, p0

    iget v3, v0, mLeft:I

    sub-int v23, v2, v3

    .line 13807
    .local v23, "width":I
    move-object/from16 v0, p0

    iget v2, v0, mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, mTop:I

    sub-int v12, v2, v3

    .line 13809
    .local v12, "height":I
    iget-object v4, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 13811
    .local v4, "scrollBar":Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v15, v0, mScrollX:I

    .line 13812
    .local v15, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v16, v0

    .line 13813
    .local v16, "scrollY":I
    const/high16 v2, 0x2000000

    and-int v2, v2, v22

    if-nez v2, :cond_167

    const/4 v13, -0x1

    .line 13820
    .local v13, "inside":I
    :goto_7f
    if-eqz v10, :cond_d3

    .line 13821
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 13822
    .local v17, "size":I
    if-gtz v17, :cond_8c

    .line 13823
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 13826
    :cond_8c
    invoke-virtual/range {p0 .. p0}, computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, computeHorizontalScrollExtent()I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 13829
    if-eqz v11, :cond_16a

    invoke-virtual/range {p0 .. p0}, getVerticalScrollbarWidth()I

    move-result v20

    .line 13831
    .local v20, "verticalScrollBarGap":I
    :goto_a7
    add-int v2, v16, v12

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v6, v2, v3

    .line 13832
    .local v6, "top":I
    move-object/from16 v0, p0

    iget v2, v0, mPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .line 13833
    .local v5, "left":I
    add-int v2, v15, v23

    move-object/from16 v0, p0

    iget v3, v0, mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int/2addr v2, v3

    sub-int v7, v2, v20

    .line 13834
    .local v7, "right":I
    add-int v8, v6, v17

    .local v8, "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 13835
    invoke-virtual/range {v2 .. v8}, onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 13836
    if-eqz v14, :cond_d3

    .line 13837
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, invalidate(IIII)V

    .line 13841
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v17    # "size":I
    .end local v20    # "verticalScrollBarGap":I
    :cond_d3
    if-eqz v11, :cond_c

    .line 13842
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 13843
    .restart local v17    # "size":I
    if-gtz v17, :cond_e0

    .line 13844
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 13847
    :cond_e0
    invoke-virtual/range {p0 .. p0}, computeVerticalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, computeVerticalScrollExtent()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 13850
    move-object/from16 v0, p0

    iget v0, v0, mVerticalScrollbarPosition:I

    move/from16 v21, v0

    .line 13851
    .local v21, "verticalScrollbarPosition":I
    if-nez v21, :cond_105

    .line 13852
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_16e

    const/16 v21, 0x1

    .line 13855
    :cond_105
    :goto_105
    packed-switch v21, :pswitch_data_17a

    .line 13858
    add-int v2, v15, v23

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int v5, v2, v3

    .line 13864
    .restart local v5    # "left":I
    :goto_113
    move-object/from16 v0, p0

    iget v2, v0, mPaddingTop:I

    and-int/2addr v2, v13

    add-int v6, v16, v2

    .line 13865
    .restart local v6    # "top":I
    add-int v7, v5, v17

    .line 13866
    .restart local v7    # "right":I
    add-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v8, v2, v3

    .line 13869
    .restart local v8    # "bottom":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, mNeededToChangedScrollBarPosition:Z

    if-eqz v2, :cond_13a

    .line 13870
    move-object/from16 v0, p0

    iget v2, v0, mScrollBarPositionPadding:I

    sub-int/2addr v5, v2

    .line 13871
    move-object/from16 v0, p0

    iget v2, v0, mScrollBarPositionPadding:I

    sub-int/2addr v7, v2

    .line 13872
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/ScrollBarDrawable;->setBounds(IIII)V

    :cond_13a
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 13875
    invoke-virtual/range {v2 .. v8}, onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 13876
    if-eqz v14, :cond_c

    .line 13877
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, invalidate(IIII)V

    goto/16 :goto_c

    .line 13782
    .end local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v10    # "drawHorizontalScrollBar":Z
    .end local v11    # "drawVerticalScrollBar":Z
    .end local v12    # "height":I
    .end local v13    # "inside":I
    .end local v15    # "scrollX":I
    .end local v16    # "scrollY":I
    .end local v17    # "size":I
    .end local v21    # "verticalScrollbarPosition":I
    .end local v22    # "viewFlags":I
    .end local v23    # "width":I
    .restart local v19    # "values":[F
    :cond_14a
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2f

    .line 13792
    .end local v19    # "values":[F
    :cond_158
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_30

    .line 13798
    .restart local v22    # "viewFlags":I
    :cond_161
    const/4 v10, 0x0

    goto/16 :goto_45

    .line 13801
    .restart local v10    # "drawHorizontalScrollBar":Z
    :cond_164
    const/4 v11, 0x0

    goto/16 :goto_54

    .line 13813
    .restart local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .restart local v11    # "drawVerticalScrollBar":Z
    .restart local v12    # "height":I
    .restart local v15    # "scrollX":I
    .restart local v16    # "scrollY":I
    .restart local v23    # "width":I
    :cond_167
    const/4 v13, 0x0

    goto/16 :goto_7f

    .line 13829
    .restart local v13    # "inside":I
    .restart local v17    # "size":I
    :cond_16a
    const/16 v20, 0x0

    goto/16 :goto_a7

    .line 13852
    .restart local v21    # "verticalScrollbarPosition":I
    :cond_16e
    const/16 v21, 0x2

    goto :goto_105

    .line 13861
    :pswitch_171
    move-object/from16 v0, p0

    iget v2, v0, mUserPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .restart local v5    # "left":I
    goto :goto_113

    .line 13855
    nop

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_171
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 13972
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13973
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13974
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9012
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 9015
    const/4 v0, 0x0

    .line 9017
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 16835
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 8771
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 5608
    if-eqz p1, :cond_46

    .line 5609
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, sendAccessibilityEvent(I)V

    .line 5615
    :goto_8
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5616
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_4a

    .line 5617
    invoke-virtual {p0}, isPressed()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5618
    invoke-virtual {p0, v3}, setPressed(Z)V

    .line 5620
    :cond_17
    if-eqz v0, :cond_26

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_26

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_26

    .line 5622
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 5624
    :cond_26
    invoke-virtual {p0}, onFocusLost()V

    .line 5630
    :cond_29
    :goto_29
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, invalidate(Z)V

    .line 5631
    iget-object v1, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5632
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_3a

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_3a

    .line 5633
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 5636
    :cond_3a
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_45

    .line 5637
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 5639
    :cond_45
    return-void

    .line 5611
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "li":Landroid/view/View$ListenerInfo;
    :cond_46
    invoke-virtual {p0, v3}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_8

    .line 5625
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4a
    if-eqz v0, :cond_29

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_29

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_29

    .line 5627
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_29
.end method

.method protected onFocusLost()V
    .registers 1

    .prologue
    .line 6530
    invoke-direct {p0}, resetPressedState()V

    .line 6531
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9946
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Z)V
    .registers 2
    .param p1, "hovered"    # Z

    .prologue
    .line 10152
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 9990
    .local v0, "action":I
    iget-boolean v6, p0, mSendingHoverAccessibilityEvents:Z

    if-nez v6, :cond_91

    .line 9991
    if-eq v0, v10, :cond_12

    if-ne v0, v9, :cond_2d

    :cond_12
    invoke-virtual {p0}, hasHoveredChild()Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7}, pointInView(FF)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 9995
    const/16 v6, 0x80

    invoke-direct {p0, v6}, sendAccessibilityHoverEvent(I)V

    .line 9996
    iput-boolean v5, p0, mSendingHoverAccessibilityEvents:Z

    .line 10008
    :cond_2d
    :goto_2d
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 10010
    .local v3, "tooltype":I
    if-eq v3, v8, :cond_35

    if-ne v3, v5, :cond_ad

    :cond_35
    move v1, v5

    .line 10012
    .local v1, "compareTooltype":Z
    :goto_36
    const/4 v2, 0x1

    .line 10013
    .local v2, "compareTooltypeByApp":Z
    iget v6, p0, mHoverPopupToolTypeByApp:I

    if-eqz v6, :cond_40

    iget v6, p0, mHoverPopupToolTypeByApp:I

    if-eq v6, v3, :cond_40

    .line 10014
    const/4 v2, 0x0

    .line 10017
    :cond_40
    if-eqz v2, :cond_84

    if-eqz v1, :cond_84

    iget v6, p0, mHoverPopupType:I

    if-eqz v6, :cond_84

    iget-boolean v6, p0, mIsDetachedFromWindow:Z

    if-nez v6, :cond_84

    invoke-virtual {p0, v3, v4}, getHoverPopupWindow(IZ)Landroid/widget/HoverPopupWindow;

    move-result-object v6

    if-eqz v6, :cond_84

    invoke-virtual {p0, v3, v4}, getHoverPopupWindow(IZ)Landroid/widget/HoverPopupWindow;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_84

    invoke-virtual {p0}, isFingerHoveredInAppWidget()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 10019
    if-ne v0, v10, :cond_af

    .line 10024
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/widget/Spinner;

    if-nez v6, :cond_84

    .line 10027
    invoke-virtual {p0, v3, v4}, getHoverPopupWindow(IZ)Landroid/widget/HoverPopupWindow;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 10034
    invoke-virtual {p0, v3, v4}, getHoverPopupWindow(IZ)Landroid/widget/HoverPopupWindow;

    move-result-object v6

    iget v7, p0, mHoverPopupType:I

    invoke-virtual {v6, v7}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 10047
    :cond_84
    :goto_84
    invoke-direct {p0}, isHoverable()Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 10048
    packed-switch v0, :pswitch_data_e0

    .line 10070
    :goto_8d
    invoke-direct {p0, p1}, dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    .line 10076
    :goto_90
    return v5

    .line 9999
    .end local v1    # "compareTooltype":Z
    .end local v2    # "compareTooltypeByApp":Z
    .end local v3    # "tooltype":I
    :cond_91
    const/16 v6, 0xa

    if-eq v0, v6, :cond_a5

    if-ne v0, v8, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7}, pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 10002
    :cond_a5
    iput-boolean v4, p0, mSendingHoverAccessibilityEvents:Z

    .line 10003
    const/16 v6, 0x100

    invoke-direct {p0, v6}, sendAccessibilityHoverEvent(I)V

    goto :goto_2d

    .restart local v3    # "tooltype":I
    :cond_ad
    move v1, v4

    .line 10010
    goto :goto_36

    .line 10036
    .restart local v1    # "compareTooltype":Z
    .restart local v2    # "compareTooltypeByApp":Z
    :cond_af
    if-eq v0, v9, :cond_84

    .line 10038
    const/16 v6, 0xa

    if-ne v0, v6, :cond_84

    .line 10040
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/widget/Spinner;

    if-nez v6, :cond_84

    .line 10041
    invoke-virtual {p0, v3, v4}, getHoverPopupWindow(IZ)Landroid/widget/HoverPopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_84

    .line 10050
    :pswitch_c3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v5, :cond_cc

    .line 10051
    invoke-virtual {p0, v5}, setFingerHovered(Z)V

    .line 10053
    :cond_cc
    invoke-virtual {p0, v5}, setHovered(Z)V

    goto :goto_8d

    .line 10056
    :pswitch_d0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v5, :cond_d9

    .line 10057
    invoke-virtual {p0, v4}, setFingerHovered(Z)V

    .line 10059
    :cond_d9
    invoke-virtual {p0, v4}, setHovered(Z)V

    goto :goto_8d

    :cond_dd
    move v5, v4

    .line 10076
    goto :goto_90

    .line 10048
    nop

    :pswitch_data_e0
    .packed-switch 0x9
        :pswitch_c3
        :pswitch_d0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5871
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 5872
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5876
    :goto_9
    return-void

    .line 5874
    :cond_a
    invoke-virtual {p0, p1}, onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5884
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 5885
    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 5886
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5887
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 5888
    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5890
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    sparse-switch v2, :sswitch_data_7a

    .line 5910
    :cond_2a
    :goto_2a
    return-void

    .line 5892
    :sswitch_2b
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_52

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 5894
    .local v0, "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_33
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, addFocusables(Ljava/util/ArrayList;II)V

    .line 5895
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 5896
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 5897
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2a

    .line 5898
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2a

    .line 5892
    .end local v0    # "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_33

    .line 5902
    :sswitch_58
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5903
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2a

    .line 5904
    invoke-virtual {p0}, getAccessibilitySelectionStart()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 5905
    invoke-virtual {p0}, getAccessibilitySelectionEnd()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 5906
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_2a

    .line 5890
    :sswitch_data_7a
    .sparse-switch
        0x8 -> :sswitch_2b
        0x2000 -> :sswitch_58
    .end sparse-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 5981
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 5982
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5986
    :goto_9
    return-void

    .line 5984
    :cond_a
    invoke-virtual {p0, p1}, onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_9
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v9, -0x1

    .line 6052
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v7, :cond_6

    .line 6156
    :cond_5
    :goto_5
    return-void

    .line 6056
    :cond_6
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 6058
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, getDrawingRect(Landroid/graphics/Rect;)V

    .line 6059
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 6061
    invoke-virtual {p0, v0}, getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 6062
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 6064
    invoke-virtual {p0}, getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v3

    .line 6065
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v7, v3, Landroid/view/View;

    if-eqz v7, :cond_23

    .line 6066
    check-cast v3, Landroid/view/View;

    .end local v3    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 6069
    :cond_23
    iget v7, p0, mID:I

    if-eq v7, v9, :cond_56

    .line 6070
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v4

    .line 6071
    .local v4, "rootView":Landroid/view/View;
    if-nez v4, :cond_2e

    .line 6072
    move-object v4, p0

    .line 6074
    :cond_2e
    iget v7, p0, mID:I

    invoke-direct {v4, p0, v7}, findLabelForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 6075
    .local v1, "label":Landroid/view/View;
    if-eqz v1, :cond_39

    .line 6076
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    .line 6079
    :cond_39
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v7, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_56

    iget v7, p0, mID:I

    invoke-static {v7}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 6083
    :try_start_49
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, mID:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 6084
    .local v6, "viewId":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_56} :catch_142

    .line 6091
    .end local v1    # "label":Landroid/view/View;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v6    # "viewId":Ljava/lang/String;
    :cond_56
    :goto_56
    iget v7, p0, mLabelForId:I

    if-eq v7, v9, :cond_6c

    .line 6092
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v4

    .line 6093
    .restart local v4    # "rootView":Landroid/view/View;
    if-nez v4, :cond_61

    .line 6094
    move-object v4, p0

    .line 6096
    :cond_61
    iget v7, p0, mLabelForId:I

    invoke-direct {v4, p0, v7}, findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 6097
    .local v2, "labeled":Landroid/view/View;
    if-eqz v2, :cond_6c

    .line 6098
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .line 6102
    .end local v2    # "labeled":Landroid/view/View;
    .end local v4    # "rootView":Landroid/view/View;
    :cond_6c
    invoke-virtual {p0}, isVisibleToUser()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 6104
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 6105
    const-class v7, Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 6106
    invoke-virtual {p0}, getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6108
    invoke-virtual {p0}, isEnabled()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 6109
    invoke-virtual {p0}, isClickable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 6110
    invoke-virtual {p0}, isFocusable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 6111
    invoke-virtual {p0}, isFocused()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 6112
    invoke-virtual {p0}, isAccessibilityFocused()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 6113
    invoke-virtual {p0}, isSelected()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 6114
    invoke-virtual {p0}, isLongClickable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 6115
    invoke-virtual {p0}, getAccessibilityLiveRegion()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 6120
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6121
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6123
    invoke-virtual {p0}, isFocusable()Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 6124
    invoke-virtual {p0}, isFocused()Z

    move-result v7

    if-eqz v7, :cond_137

    .line 6125
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6131
    :cond_dd
    :goto_dd
    invoke-virtual {p0}, isAccessibilityFocused()Z

    move-result v7

    if-nez v7, :cond_13c

    .line 6132
    const/16 v7, 0x40

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6137
    :goto_e8
    invoke-virtual {p0}, isClickable()Z

    move-result v7

    if-eqz v7, :cond_f9

    invoke-virtual {p0}, isEnabled()Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 6138
    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6141
    :cond_f9
    invoke-virtual {p0}, isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_10a

    invoke-virtual {p0}, isEnabled()Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 6142
    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6145
    :cond_10a
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .line 6146
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 6147
    invoke-virtual {p0}, getAccessibilitySelectionStart()I

    move-result v7

    invoke-virtual {p0}, getAccessibilitySelectionEnd()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 6149
    const/high16 v7, 0x20000

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6150
    const/16 v7, 0x100

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6151
    const/16 v7, 0x200

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6152
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    goto/16 :goto_5

    .line 6127
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_137
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_dd

    .line 6134
    :cond_13c
    const/16 v7, 0x80

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_e8

    .line 6085
    .restart local v1    # "label":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :catch_142
    move-exception v7

    goto/16 :goto_56
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x1

    .line 9561
    const/4 v0, 0x0

    .line 9563
    .local v0, "result":Z
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 9564
    iget v2, p0, mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_14

    move v0, v1

    .line 9576
    .end local v0    # "result":Z
    :cond_13
    :goto_13
    return v0

    .line 9568
    .restart local v0    # "result":Z
    :cond_14
    iget v2, p0, mViewFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_21

    iget v2, p0, mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_13

    :cond_21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_13

    .line 9571
    invoke-virtual {p0, v1}, setPressed(Z)V

    .line 9572
    const/4 v2, 0x0

    invoke-direct {p0, v2}, checkForLongClick(I)V

    move v0, v1

    .line 9573
    goto :goto_13
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 9588
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 9636
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 9536
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 9651
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 9543
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 9605
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 9606
    iget v1, p0, mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_11

    .line 9607
    const/4 v0, 0x1

    .line 9619
    :cond_10
    :goto_10
    return v0

    .line 9609
    :cond_11
    iget v1, p0, mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 9610
    invoke-virtual {p0, v0}, setPressed(Z)V

    .line 9612
    iget-boolean v1, p0, mHasPerformedLongPress:Z

    if-nez v1, :cond_10

    .line 9614
    invoke-direct {p0}, removeLongPressCallback()V

    .line 9615
    invoke-virtual {p0}, performClick()Z

    move-result v0

    goto :goto_10
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 16743
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 18673
    invoke-virtual {p0}, getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, setMeasuredDimension(II)V

    .line 18675
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 19682
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5829
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 5830
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5834
    :goto_9
    return-void

    .line 5832
    :cond_a
    invoke-virtual {p0, p1}, onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5842
    return-void
.end method

.method public onResolveDrawables(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 16964
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 14734
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 14735
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 14736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14742
    :cond_5c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 14146
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 14676
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 14677
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .registers 2
    .param p1, "screenState"    # I

    .prologue
    .line 14098
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v2, 0x1

    .line 10780
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 10781
    invoke-direct {p0}, postSendViewScrolledAccessibilityEventCallback()V

    .line 10784
    :cond_10
    iput-boolean v2, p0, mBackgroundSizeChanged:Z

    .line 10786
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10787
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_18

    .line 10788
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 10790
    :cond_18
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 18989
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 10825
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    .prologue
    .line 8755
    invoke-direct {p0}, removeUnsetPressCallback()V

    .line 8756
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 8757
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x200000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 10330
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 10331
    .local v5, "y":F
    iget v3, p0, mViewFlags:I

    .line 10333
    .local v3, "viewFlags":I
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_30

    .line 10334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_26

    iget v8, p0, mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_26

    .line 10335
    invoke-virtual {p0, v6}, setPressed(Z)V

    .line 10339
    :cond_26
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_2e

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2f

    :cond_2e
    move v6, v7

    .line 10457
    :cond_2f
    :goto_2f
    return v6

    .line 10343
    :cond_30
    iget-object v8, p0, mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v8, :cond_3e

    .line 10344
    iget-object v8, p0, mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v8, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_3e

    move v6, v7

    .line 10345
    goto :goto_2f

    .line 10349
    :cond_3e
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_46

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2f

    .line 10351
    :cond_46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_132

    :cond_4d
    :goto_4d
    move v6, v7

    .line 10454
    goto :goto_2f

    .line 10353
    :pswitch_4f
    iget v8, p0, mPrivateFlags:I

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_b5

    move v2, v7

    .line 10354
    .local v2, "prepressed":Z
    :goto_57
    iget v6, p0, mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_5f

    if-eqz v2, :cond_4d

    .line 10357
    :cond_5f
    const/4 v0, 0x0

    .line 10358
    .local v0, "focusTaken":Z
    invoke-virtual {p0}, isFocusable()Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-virtual {p0}, isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-virtual {p0}, isFocused()Z

    move-result v6

    if-nez v6, :cond_76

    .line 10359
    invoke-virtual {p0}, requestFocus()Z

    move-result v0

    .line 10362
    :cond_76
    if-eqz v2, :cond_7b

    .line 10367
    invoke-direct {p0, v7, v4, v5}, setPressed(ZFF)V

    .line 10370
    :cond_7b
    iget-boolean v6, p0, mHasPerformedLongPress:Z

    if-nez v6, :cond_9a

    .line 10372
    invoke-direct {p0}, removeLongPressCallback()V

    .line 10375
    if-nez v0, :cond_9a

    .line 10379
    iget-object v6, p0, mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_8f

    .line 10380
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, mPerformClick:Landroid/view/View$PerformClick;

    .line 10382
    :cond_8f
    iget-object v6, p0, mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_9a

    .line 10383
    invoke-virtual {p0}, performClick()Z

    .line 10388
    :cond_9a
    iget-object v6, p0, mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_a5

    .line 10389
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 10392
    :cond_a5
    if-eqz v2, :cond_b7

    .line 10393
    iget-object v6, p0, mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 10400
    :cond_b1
    :goto_b1
    invoke-direct {p0}, removeTapCallback()V

    goto :goto_4d

    .end local v0    # "focusTaken":Z
    .end local v2    # "prepressed":Z
    :cond_b5
    move v2, v6

    .line 10353
    goto :goto_57

    .line 10395
    .restart local v0    # "focusTaken":Z
    .restart local v2    # "prepressed":Z
    :cond_b7
    iget-object v6, p0, mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 10397
    iget-object v6, p0, mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_b1

    .line 10405
    .end local v0    # "focusTaken":Z
    .end local v2    # "prepressed":Z
    :pswitch_c5
    iput-boolean v6, p0, mHasPerformedLongPress:Z

    .line 10407
    invoke-virtual {p0, p1}, performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 10412
    invoke-virtual {p0}, isInScrollingContainer()Z

    move-result v1

    .line 10416
    .local v1, "isInScrollingContainer":Z
    if-eqz v1, :cond_101

    .line 10417
    iget v6, p0, mPrivateFlags:I

    const/high16 v8, 0x2000000

    or-int/2addr v6, v8

    iput v6, p0, mPrivateFlags:I

    .line 10418
    iget-object v6, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_e5

    .line 10419
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 10421
    :cond_e5
    iget-object v6, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v6, Landroid/view/View$CheckForTap;->x:F

    .line 10422
    iget-object v6, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v6, Landroid/view/View$CheckForTap;->y:F

    .line 10423
    iget-object v6, p0, mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4d

    .line 10426
    :cond_101
    invoke-direct {p0, v7, v4, v5}, setPressed(ZFF)V

    .line 10427
    invoke-direct {p0, v6}, checkForLongClick(I)V

    goto/16 :goto_4d

    .line 10432
    .end local v1    # "isInScrollingContainer":Z
    :pswitch_109
    invoke-virtual {p0, v6}, setPressed(Z)V

    .line 10433
    invoke-direct {p0}, removeTapCallback()V

    .line 10434
    invoke-direct {p0}, removeLongPressCallback()V

    goto/16 :goto_4d

    .line 10438
    :pswitch_114
    invoke-virtual {p0, v4, v5}, drawableHotspotChanged(FF)V

    .line 10441
    iget v8, p0, mTouchSlop:I

    int-to-float v8, v8

    invoke-virtual {p0, v4, v5, v8}, pointInView(FFF)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 10443
    invoke-direct {p0}, removeTapCallback()V

    .line 10444
    iget v8, p0, mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_4d

    .line 10446
    invoke-direct {p0}, removeLongPressCallback()V

    .line 10448
    invoke-virtual {p0, v6}, setPressed(Z)V

    goto/16 :goto_4d

    .line 10351
    nop

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_4f
        :pswitch_114
        :pswitch_109
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9905
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9279
    if-nez p2, :cond_9

    .line 9280
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_a

    .line 9281
    invoke-direct {p0}, initialAwakenScrollBars()Z

    .line 9286
    :cond_9
    :goto_9
    return-void

    .line 9283
    :cond_a
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    goto :goto_9
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 9214
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9215
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_43

    .line 9216
    invoke-virtual {p0}, isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 9217
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setPressed(Z)V

    .line 9219
    :cond_10
    if-eqz v0, :cond_1b

    iget v1, p0, mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 9220
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 9222
    :cond_1b
    invoke-direct {p0}, removeLongPressCallback()V

    .line 9223
    invoke-direct {p0}, removeTapCallback()V

    .line 9224
    invoke-virtual {p0}, onFocusLost()V

    .line 9227
    iget v1, p0, mPrivateFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_33

    .line 9228
    iget v1, p0, mPrivateFlags:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 9230
    :cond_33
    iget v1, p0, mTouchwizFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3f

    .line 9231
    iget v1, p0, mTouchwizFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, mTouchwizFlags:I

    .line 9237
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, refreshDrawableState()V

    .line 9246
    return-void

    .line 9234
    :cond_43
    if-eqz v0, :cond_3f

    iget v1, p0, mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3f

    .line 9235
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_3f
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .registers 2
    .param p1, "visible"    # I

    .prologue
    .line 19181
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 9336
    if-nez p1, :cond_5

    .line 9337
    invoke-direct {p0}, initialAwakenScrollBars()Z

    .line 9339
    :cond_5
    return-void
.end method

.method protected onWritingBuddyMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9781
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "clear"    # Z
    .param p3, "clearMask"    # I

    .prologue
    .line 15044
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "             DIRTY("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DRAWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mPrivateFlags:I

    and-int/lit8 v6, v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CACHE_VALID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") INVALIDATED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15048
    if-eqz p2, :cond_65

    .line 15049
    iget v4, p0, mPrivateFlags:I

    and-int/2addr v4, p3

    iput v4, p0, mPrivateFlags:I

    .line 15051
    :cond_65
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_90

    move-object v3, p0

    .line 15052
    check-cast v3, Landroid/view/ViewGroup;

    .line 15053
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 15054
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_71
    if-ge v2, v1, :cond_90

    .line 15055
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 15056
    .local v0, "child":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2, p3}, outputDirtyFlags(Ljava/lang/String;ZI)V

    .line 15054
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 15059
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_90
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 26
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 19621
    move-object/from16 v0, p0

    iget v10, v0, mOverScrollMode:I

    .line 19622
    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_55

    const/4 v2, 0x1

    .line 19624
    .local v2, "canScrollHorizontal":Z
    :goto_f
    invoke-virtual/range {p0 .. p0}, computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_57

    const/4 v3, 0x1

    .line 19626
    .local v3, "canScrollVertical":Z
    :goto_1a
    if-eqz v10, :cond_21

    const/4 v14, 0x1

    if-ne v10, v14, :cond_59

    if-eqz v2, :cond_59

    :cond_21
    const/4 v9, 0x1

    .line 19628
    .local v9, "overScrollHorizontal":Z
    :goto_22
    if-eqz v10, :cond_29

    const/4 v14, 0x1

    if-ne v10, v14, :cond_5b

    if-eqz v3, :cond_5b

    :cond_29
    const/4 v11, 0x1

    .line 19631
    .local v11, "overScrollVertical":Z
    :goto_2a
    add-int v7, p3, p1

    .line 19632
    .local v7, "newScrollX":I
    if-nez v9, :cond_30

    .line 19633
    const/16 p7, 0x0

    .line 19636
    :cond_30
    add-int v8, p4, p2

    .line 19637
    .local v8, "newScrollY":I
    if-nez v11, :cond_36

    .line 19638
    const/16 p8, 0x0

    .line 19642
    :cond_36
    move/from16 v0, p7

    neg-int v6, v0

    .line 19643
    .local v6, "left":I
    add-int v12, p7, p5

    .line 19644
    .local v12, "right":I
    move/from16 v0, p8

    neg-int v13, v0

    .line 19645
    .local v13, "top":I
    add-int v1, p8, p6

    .line 19647
    .local v1, "bottom":I
    const/4 v4, 0x0

    .line 19648
    .local v4, "clampedX":Z
    if-le v7, v12, :cond_5d

    .line 19649
    move v7, v12

    .line 19650
    const/4 v4, 0x1

    .line 19656
    :cond_45
    :goto_45
    const/4 v5, 0x0

    .line 19657
    .local v5, "clampedY":Z
    if-le v8, v1, :cond_62

    .line 19658
    move v8, v1

    .line 19659
    const/4 v5, 0x1

    .line 19665
    :cond_4a
    :goto_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, onOverScrolled(IIZZ)V

    .line 19667
    if-nez v4, :cond_53

    if-eqz v5, :cond_67

    :cond_53
    const/4 v14, 0x1

    :goto_54
    return v14

    .line 19622
    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v5    # "clampedY":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overScrollHorizontal":Z
    .end local v11    # "overScrollVertical":Z
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_55
    const/4 v2, 0x0

    goto :goto_f

    .line 19624
    .restart local v2    # "canScrollHorizontal":Z
    :cond_57
    const/4 v3, 0x0

    goto :goto_1a

    .line 19626
    .restart local v3    # "canScrollVertical":Z
    :cond_59
    const/4 v9, 0x0

    goto :goto_22

    .line 19628
    .restart local v9    # "overScrollHorizontal":Z
    :cond_5b
    const/4 v11, 0x0

    goto :goto_2a

    .line 19651
    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v11    # "overScrollVertical":Z
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_5d
    if-ge v7, v6, :cond_45

    .line 19652
    move v7, v6

    .line 19653
    const/4 v4, 0x1

    goto :goto_45

    .line 19660
    .restart local v5    # "clampedY":Z
    :cond_62
    if-ge v8, v13, :cond_4a

    .line 19661
    move v8, v13

    .line 19662
    const/4 v5, 0x1

    goto :goto_4a

    .line 19667
    :cond_67
    const/4 v14, 0x0

    goto :goto_54
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 8494
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 8495
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 8497
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1, p2}, performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_a
.end method

.method performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 8507
    sparse-switch p1, :sswitch_data_cc

    :cond_6
    move v5, v6

    .line 8595
    :cond_7
    :goto_7
    return v5

    .line 8509
    :sswitch_8
    invoke-virtual {p0}, isClickable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8510
    invoke-virtual {p0}, performClick()Z

    goto :goto_7

    .line 8515
    :sswitch_12
    invoke-virtual {p0}, isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8516
    invoke-virtual {p0}, performLongClick()Z

    goto :goto_7

    .line 8521
    :sswitch_1c
    invoke-virtual {p0}, hasFocus()Z

    move-result v5

    if-nez v5, :cond_6

    .line 8524
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 8525
    invoke-virtual {p0}, requestFocus()Z

    move-result v5

    goto :goto_7

    .line 8529
    :sswitch_2e
    invoke-virtual {p0}, hasFocus()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8530
    invoke-virtual {p0}, clearFocus()V

    .line 8531
    invoke-virtual {p0}, isFocused()Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    goto :goto_7

    .line 8535
    :sswitch_3f
    invoke-virtual {p0}, isSelected()Z

    move-result v7

    if-nez v7, :cond_6

    .line 8536
    invoke-virtual {p0, v5}, setSelected(Z)V

    .line 8537
    invoke-virtual {p0}, isSelected()Z

    move-result v5

    goto :goto_7

    .line 8541
    :sswitch_4d
    invoke-virtual {p0}, isSelected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8542
    invoke-virtual {p0, v6}, setSelected(Z)V

    .line 8543
    invoke-virtual {p0}, isSelected()Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    goto :goto_7

    .line 8547
    :sswitch_5e
    invoke-virtual {p0}, isAccessibilityFocused()Z

    move-result v5

    if-nez v5, :cond_6

    .line 8548
    invoke-virtual {p0}, requestAccessibilityFocus()Z

    move-result v5

    goto :goto_7

    .line 8552
    :sswitch_69
    invoke-virtual {p0}, isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8553
    invoke-virtual {p0}, clearAccessibilityFocus()V

    goto :goto_7

    .line 8558
    :sswitch_73
    if-eqz p2, :cond_6

    .line 8559
    const-string v6, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 8561
    .local v2, "granularity":I
    const-string v6, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 8563
    .local v1, "extendSelection":Z
    invoke-direct {p0, v2, v5, v1}, traverseAtGranularity(IZZ)Z

    move-result v5

    goto :goto_7

    .line 8567
    .end local v1    # "extendSelection":Z
    .end local v2    # "granularity":I
    :sswitch_86
    if-eqz p2, :cond_6

    .line 8568
    const-string v5, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 8570
    .restart local v2    # "granularity":I
    const-string v5, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 8572
    .restart local v1    # "extendSelection":Z
    invoke-direct {p0, v2, v6, v1}, traverseAtGranularity(IZZ)Z

    move-result v5

    goto/16 :goto_7

    .line 8576
    .end local v1    # "extendSelection":Z
    .end local v2    # "granularity":I
    :sswitch_9a
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .line 8577
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_a3

    move v5, v6

    .line 8578
    goto/16 :goto_7

    .line 8580
    :cond_a3
    if-eqz p2, :cond_c9

    const-string v7, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 8582
    .local v3, "start":I
    :goto_ab
    if-eqz p2, :cond_b3

    const-string v7, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8585
    .local v0, "end":I
    :cond_b3
    invoke-virtual {p0}, getAccessibilitySelectionStart()I

    move-result v7

    if-ne v7, v3, :cond_bf

    invoke-virtual {p0}, getAccessibilitySelectionEnd()I

    move-result v7

    if-eq v7, v0, :cond_6

    :cond_bf
    if-ne v3, v0, :cond_6

    .line 8588
    invoke-virtual {p0, v3, v0}, setAccessibilitySelection(II)V

    .line 8589
    invoke-virtual {p0, v6}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_7

    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_c9
    move v3, v0

    .line 8580
    goto :goto_ab

    .line 8507
    nop

    :sswitch_data_cc
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_2e
        0x4 -> :sswitch_3f
        0x8 -> :sswitch_4d
        0x10 -> :sswitch_8
        0x20 -> :sswitch_12
        0x40 -> :sswitch_5e
        0x80 -> :sswitch_69
        0x100 -> :sswitch_73
        0x200 -> :sswitch_86
        0x20000 -> :sswitch_9a
    .end sparse-switch
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    .line 5257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, showContextMenu(FFI)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5258
    const/4 v0, 0x1

    .line 5261
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public performClick()Z
    .registers 4

    .prologue
    .line 5194
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5195
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_17

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_17

    .line 5196
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, playSoundEffect(I)V

    .line 5197
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 5198
    const/4 v1, 0x1

    .line 5203
    .local v1, "result":Z
    :goto_12
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, sendAccessibilityEvent(I)V

    .line 5204
    return v1

    .line 5200
    .end local v1    # "result":Z
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_12
.end method

.method performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 7
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/high16 v2, 0x4000000

    const/4 v3, 0x1

    .line 9474
    and-int/lit8 v1, p2, 0xc

    if-nez v1, :cond_21

    .line 9475
    iget v1, p0, mViewFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    .line 9476
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 9478
    :cond_e
    iget v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p0, mSystemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 9479
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 9480
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_21

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 9481
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 9484
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_21
    return-void
.end method

.method public performHapticFeedback(I)Z
    .registers 3
    .param p1, "feedbackConstant"    # I

    .prologue
    .line 19064
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .registers 6
    .param p1, "feedbackConstant"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 19077
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_6

    .line 19085
    :cond_5
    :goto_5
    return v0

    .line 19081
    :cond_6
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_10

    invoke-virtual {p0}, isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19085
    :cond_10
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-interface {v1, p1, v0}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_5
.end method

.method public performLongClick()Z
    .registers 4

    .prologue
    .line 5231
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, sendAccessibilityEvent(I)V

    .line 5233
    const/4 v0, 0x0

    .line 5234
    .local v0, "handled":Z
    iget-object v1, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5235
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_13

    .line 5236
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 5238
    :cond_13
    if-nez v0, :cond_19

    .line 5239
    invoke-virtual {p0}, showContextMenu()Z

    move-result v0

    .line 5241
    :cond_19
    if-eqz v0, :cond_1f

    .line 5242
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, performHapticFeedback(I)Z

    .line 5244
    :cond_1f
    return v0
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "soundConstant"    # I

    .prologue
    .line 19042
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 19046
    :cond_10
    :goto_10
    return-void

    .line 19045
    :cond_11
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_10
.end method

.method final pointInView(FF)Z
    .registers 6
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 12167
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1f

    iget v0, p0, mRight:I

    iget v1, p0, mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1f

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_1f

    iget v0, p0, mBottom:I

    iget v1, p0, mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public pointInView(FFF)Z
    .registers 6
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 12180
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_22

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_22

    iget v0, p0, mRight:I

    iget v1, p0, mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_22

    iget v0, p0, mBottom:I

    iget v1, p0, mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 12965
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12966
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 12967
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 12971
    :goto_a
    return v1

    .line 12970
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 12971
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 12994
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12995
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 12996
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 13000
    :goto_a
    return v1

    .line 12999
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 13000
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public postInvalidate()V
    .registers 3

    .prologue
    .line 13086
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, postInvalidateDelayed(J)V

    .line 13087
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 13106
    const-wide/16 v2, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, postInvalidateDelayed(JIIII)V

    .line 13107
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .registers 6
    .param p1, "delayMilliseconds"    # J

    .prologue
    .line 13125
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13126
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_9

    .line 13127
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateDelayed(Landroid/view/View;J)V

    .line 13129
    :cond_9
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 10
    .param p1, "delayMilliseconds"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 13154
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13155
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 13156
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 13157
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 13158
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 13159
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 13160
    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 13161
    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 13163
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V

    .line 13165
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_17
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .registers 3

    .prologue
    .line 13179
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13180
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_9

    .line 13181
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->dispatchInvalidateOnAnimation(Landroid/view/View;)V

    .line 13183
    :cond_9
    return-void
.end method

.method public postInvalidateOnAnimation(IIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 13203
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13204
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 13205
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 13206
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 13207
    iput p1, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 13208
    iput p2, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 13209
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 13210
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 13212
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 13214
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_17
    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 13013
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13014
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_e

    .line 13015
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 13021
    :goto_d
    return-void

    .line 13019
    :cond_e
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method public postOnAnimationDelayed(Ljava/lang/Runnable;J)V
    .registers 12
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 13036
    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13037
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_10

    .line 13038
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 13044
    :goto_f
    return-void

    .line 13042
    :cond_10
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_f
.end method

.method protected recomputePadding()V
    .registers 5

    .prologue
    .line 13437
    iget v0, p0, mUserPaddingLeft:I

    iget v1, p0, mPaddingTop:I

    iget v2, p0, mUserPaddingRight:I

    iget v3, p0, mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, internalSetPadding(IIII)V

    .line 13438
    return-void
.end method

.method public refreshDrawableState()V
    .registers 3

    .prologue
    .line 17046
    iget v1, p0, mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, mPrivateFlags:I

    .line 17047
    invoke-virtual {p0}, drawableStateChanged()V

    .line 17049
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    .line 17050
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    .line 17051
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 17053
    :cond_10
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 6
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 13062
    if-eqz p1, :cond_1b

    .line 13063
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13064
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_14

    .line 13065
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13066
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 13070
    :cond_14
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13072
    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_1b
    return v3
.end method

.method public removeImageFilterClipRect(Landroid/view/View$ClipRect;)V
    .registers 3
    .param p1, "clipRect"    # Landroid/view/View$ClipRect;

    .prologue
    .line 4565
    iget-object v0, p0, mRenderNodeImageFilterClipRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4566
    invoke-virtual {p0}, syncImageFilterClipRects()V

    .line 4567
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 4568
    return-void
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 5114
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5115
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_b

    .line 5119
    :cond_a
    :goto_a
    return-void

    .line 5118
    :cond_b
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 5080
    iget-object v0, p0, mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 5081
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_b

    .line 5085
    :cond_a
    :goto_a
    return-void

    .line 5084
    :cond_b
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public removeSmartClipTag(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 22295
    iget-object v0, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 22296
    :cond_6
    const/4 v0, 0x0

    .line 22300
    :goto_7
    return v0

    .line 22299
    :cond_8
    iget-object v0, p0, mSmartClipDataTag:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    .line 22300
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public reportCurrentWritingBuddyView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9788
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 9789
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 9790
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setCurrentWritingBuddyView(Landroid/view/View;)V

    .line 9792
    :cond_9
    return-void
.end method

.method public requestAccessibilityFocus()Z
    .registers 7

    .prologue
    const/high16 v5, 0x4000000

    const/4 v3, 0x0

    .line 7949
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 7950
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 7976
    :cond_f
    :goto_f
    return v3

    .line 7953
    :cond_10
    const/4 v1, 0x0

    .line 7960
    .local v1, "universalSwitchEnabled":Z
    if-nez v1, :cond_19

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 7963
    :cond_19
    iget v4, p0, mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_f

    .line 7966
    iget v4, p0, mPrivateFlags2:I

    and-int/2addr v4, v5

    if-nez v4, :cond_f

    .line 7967
    iget v3, p0, mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, mPrivateFlags2:I

    .line 7968
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 7969
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_33

    .line 7970
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7972
    :cond_33
    invoke-virtual {p0}, invalidate()V

    .line 7973
    const v3, 0x8000

    invoke-virtual {p0, v3}, sendAccessibilityEvent(I)V

    .line 7974
    const/4 v3, 0x1

    goto :goto_f
.end method

.method public requestApplyInsets()V
    .registers 1

    .prologue
    .line 7101
    invoke-virtual {p0}, requestFitSystemWindows()V

    .line 7102
    return-void
.end method

.method public requestFitSystemWindows()V
    .registers 2

    .prologue
    .line 7092
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 7093
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    .line 7095
    :cond_9
    return-void
.end method

.method public final requestFocus()Z
    .registers 2

    .prologue
    .line 8056
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 8077
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 8110
    invoke-direct {p0, p1, p2}, requestFocusNoSearch(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final requestFocusFromTouch()Z
    .registers 3

    .prologue
    .line 8147
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8148
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 8149
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_10

    .line 8150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 8153
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_10
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .registers 4

    .prologue
    .line 18512
    iget-object v1, p0, mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v1, :cond_9

    iget-object v1, p0, mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clear()V

    .line 18514
    :cond_9
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2a

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-nez v1, :cond_2a

    .line 18517
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 18518
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 18519
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->requestLayoutDuringLayout(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 18535
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_25
    :goto_25
    return-void

    .line 18523
    .restart local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_26
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p0, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    .line 18526
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2a
    iget v1, p0, mPrivateFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, mPrivateFlags:I

    .line 18527
    iget v1, p0, mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 18529
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_48

    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_48

    .line 18530
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 18532
    :cond_48
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_25

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-ne v1, p0, :cond_25

    .line 18533
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    goto :goto_25
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 5421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 12
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    .line 5440
    iget-object v5, p0, mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_6

    .line 5441
    const/4 v4, 0x0

    .line 5477
    :cond_5
    return v4

    .line 5444
    :cond_6
    move-object v0, p0

    .line 5446
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_6c

    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5447
    .local v3, "position":Landroid/graphics/RectF;
    :goto_f
    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5448
    invoke-virtual {p0}, getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 5450
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    .line 5451
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 5452
    .local v4, "scrolled":Z
    :goto_24
    if-eqz v1, :cond_5

    .line 5453
    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5456
    invoke-interface {v1, v0, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v4, v5

    .line 5459
    invoke-virtual {v0}, hasIdentityMatrix()Z

    move-result v5

    if-nez v5, :cond_47

    .line 5460
    invoke-virtual {v0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5463
    :cond_47
    iget v5, v0, mLeft:I

    int-to-float v5, v5

    iget v6, v0, mTop:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 5465
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_5

    move-object v2, v1

    .line 5469
    check-cast v2, Landroid/view/View;

    .line 5471
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2}, getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 5473
    move-object v0, v2

    .line 5474
    invoke-virtual {v0}, getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5475
    goto :goto_24

    .line 5446
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "parentView":Landroid/view/View;
    .end local v3    # "position":Landroid/graphics/RectF;
    .end local v4    # "scrolled":Z
    :cond_6c
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_f
.end method

.method public final requestUnbufferedDispatch(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 10569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 10570
    .local v0, "action":I
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_13

    if-eqz v0, :cond_d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-nez v1, :cond_14

    .line 10576
    :cond_13
    :goto_13
    return-void

    .line 10575
    :cond_14
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    goto :goto_13
.end method

.method public resetPaddingToInitialValues()V
    .registers 2

    .prologue
    .line 17691
    invoke-direct {p0}, isRtlCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 17692
    iget v0, p0, mUserPaddingLeftInitial:I

    iput v0, p0, mPaddingLeft:I

    .line 17693
    iget v0, p0, mUserPaddingRightInitial:I

    iput v0, p0, mPaddingRight:I

    .line 17703
    :goto_e
    return-void

    .line 17696
    :cond_f
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 17697
    iget v0, p0, mUserPaddingEnd:I

    if-ltz v0, :cond_26

    iget v0, p0, mUserPaddingEnd:I

    :goto_1b
    iput v0, p0, mPaddingLeft:I

    .line 17698
    iget v0, p0, mUserPaddingStart:I

    if-ltz v0, :cond_29

    iget v0, p0, mUserPaddingStart:I

    :goto_23
    iput v0, p0, mPaddingRight:I

    goto :goto_e

    .line 17697
    :cond_26
    iget v0, p0, mUserPaddingLeftInitial:I

    goto :goto_1b

    .line 17698
    :cond_29
    iget v0, p0, mUserPaddingRightInitial:I

    goto :goto_23

    .line 17700
    :cond_2c
    iget v0, p0, mUserPaddingStart:I

    if-ltz v0, :cond_3d

    iget v0, p0, mUserPaddingStart:I

    :goto_32
    iput v0, p0, mPaddingLeft:I

    .line 17701
    iget v0, p0, mUserPaddingEnd:I

    if-ltz v0, :cond_40

    iget v0, p0, mUserPaddingEnd:I

    :goto_3a
    iput v0, p0, mPaddingRight:I

    goto :goto_e

    .line 17700
    :cond_3d
    iget v0, p0, mUserPaddingLeftInitial:I

    goto :goto_32

    .line 17701
    :cond_40
    iget v0, p0, mUserPaddingRightInitial:I

    goto :goto_3a
.end method

.method protected resetResolvedDrawables()V
    .registers 3

    .prologue
    .line 16970
    iget v0, p0, mPrivateFlags2:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 16971
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .registers 2

    .prologue
    .line 14231
    iget v0, p0, mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, mPrivateFlags2:I

    .line 14232
    return-void
.end method

.method public resetResolvedPadding()V
    .registers 3

    .prologue
    .line 14329
    iget v0, p0, mPrivateFlags2:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 14330
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .registers 3

    .prologue
    .line 20489
    iget v0, p0, mPrivateFlags2:I

    const v1, -0xf0001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 20491
    iget v0, p0, mPrivateFlags2:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 20492
    return-void
.end method

.method public resetResolvedTextDirection()V
    .registers 2

    .prologue
    .line 20252
    iget v0, p0, mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1e01

    iput v0, p0, mPrivateFlags2:I

    .line 20254
    iget v0, p0, mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, mPrivateFlags2:I

    .line 20255
    return-void
.end method

.method public resetRtlProperties()V
    .registers 1

    .prologue
    .line 14074
    invoke-virtual {p0}, resetResolvedLayoutDirection()V

    .line 14075
    invoke-virtual {p0}, resetResolvedTextDirection()V

    .line 14076
    invoke-virtual {p0}, resetResolvedTextAlignment()V

    .line 14077
    invoke-virtual {p0}, resetResolvedPadding()V

    .line 14078
    invoke-virtual {p0}, resetResolvedDrawables()V

    .line 14079
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .registers 3

    .prologue
    .line 8476
    iget v0, p0, mPrivateFlags2:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 8477
    return-void
.end method

.method protected resolveDrawables()V
    .registers 4

    .prologue
    .line 16936
    invoke-virtual {p0}, isLayoutDirectionResolved()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, getRawLayoutDirection()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 16949
    :goto_d
    return-void

    .line 16941
    :cond_e
    invoke-virtual {p0}, isLayoutDirectionResolved()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    .line 16944
    .local v0, "layoutDirection":I
    :goto_18
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_21

    .line 16945
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 16947
    :cond_21
    iget v1, p0, mPrivateFlags2:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, p0, mPrivateFlags2:I

    .line 16948
    invoke-virtual {p0, v0}, onResolveDrawables(I)V

    goto :goto_d

    .line 16941
    .end local v0    # "layoutDirection":I
    :cond_2c
    invoke-virtual {p0}, getRawLayoutDirection()I

    move-result v0

    goto :goto_18
.end method

.method public resolveLayoutDirection()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14158
    iget v3, p0, mPrivateFlags2:I

    and-int/lit8 v3, v3, -0x31

    iput v3, p0, mPrivateFlags2:I

    .line 14160
    invoke-direct {p0}, hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 14162
    iget v3, p0, mPrivateFlags2:I

    and-int/lit8 v3, v3, 0xc

    shr-int/lit8 v3, v3, 0x2

    packed-switch v3, :pswitch_data_78

    .line 14196
    :cond_17
    :goto_17
    iget v1, p0, mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, mPrivateFlags2:I

    move v1, v2

    .line 14197
    :cond_1e
    return v1

    .line 14167
    :pswitch_1f
    invoke-virtual {p0}, canResolveLayoutDirection()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 14171
    :try_start_25
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->isLayoutDirectionResolved()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 14173
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_17

    .line 14174
    iget v1, p0, mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, mPrivateFlags2:I
    :try_end_3b
    .catch Ljava/lang/AbstractMethodError; {:try_start_25 .. :try_end_3b} :catch_3c

    goto :goto_17

    .line 14176
    :catch_3c
    move-exception v0

    .line 14177
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not fully implement ViewParent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 14182
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_60
    iget v1, p0, mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, mPrivateFlags2:I

    goto :goto_17

    .line 14185
    :pswitch_67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_17

    .line 14187
    iget v1, p0, mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, mPrivateFlags2:I

    goto :goto_17

    .line 14162
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_60
        :pswitch_1f
        :pswitch_67
    .end packed-switch
.end method

.method public resolveLayoutParams()V
    .registers 3

    .prologue
    .line 12383
    iget-object v0, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_d

    .line 12384
    iget-object v0, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->resolveLayoutDirection(I)V

    .line 12386
    :cond_d
    return-void
.end method

.method public resolvePadding()V
    .registers 7

    .prologue
    const/high16 v3, -0x80000000

    .line 14266
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    .line 14268
    .local v1, "resolvedLayoutDirection":I
    invoke-direct {p0}, isRtlCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 14273
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_41

    iget-boolean v2, p0, mLeftPaddingDefined:Z

    if-eqz v2, :cond_18

    iget-boolean v2, p0, mRightPaddingDefined:Z

    if-nez v2, :cond_41

    .line 14274
    :cond_18
    sget-object v2, sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 14275
    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_2c

    .line 14276
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14277
    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14279
    :cond_2c
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 14280
    iget-boolean v2, p0, mLeftPaddingDefined:Z

    if-nez v2, :cond_39

    .line 14281
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, mUserPaddingLeftInitial:I

    .line 14283
    :cond_39
    iget-boolean v2, p0, mRightPaddingDefined:Z

    if-nez v2, :cond_41

    .line 14284
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, mUserPaddingRightInitial:I

    .line 14287
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_41
    packed-switch v1, :pswitch_data_9a

    .line 14302
    iget v2, p0, mUserPaddingStart:I

    if-eq v2, v3, :cond_8d

    .line 14303
    iget v2, p0, mUserPaddingStart:I

    iput v2, p0, mUserPaddingLeft:I

    .line 14307
    :goto_4c
    iget v2, p0, mUserPaddingEnd:I

    if-eq v2, v3, :cond_92

    .line 14308
    iget v2, p0, mUserPaddingEnd:I

    iput v2, p0, mUserPaddingRight:I

    .line 14314
    :goto_54
    iget v2, p0, mUserPaddingBottom:I

    if-ltz v2, :cond_97

    iget v2, p0, mUserPaddingBottom:I

    :goto_5a
    iput v2, p0, mUserPaddingBottom:I

    .line 14317
    :cond_5c
    iget v2, p0, mUserPaddingLeft:I

    iget v3, p0, mPaddingTop:I

    iget v4, p0, mUserPaddingRight:I

    iget v5, p0, mUserPaddingBottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, internalSetPadding(IIII)V

    .line 14318
    invoke-virtual {p0, v1}, onRtlPropertiesChanged(I)V

    .line 14320
    iget v2, p0, mPrivateFlags2:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, mPrivateFlags2:I

    .line 14321
    return-void

    .line 14289
    :pswitch_72
    iget v2, p0, mUserPaddingStart:I

    if-eq v2, v3, :cond_83

    .line 14290
    iget v2, p0, mUserPaddingStart:I

    iput v2, p0, mUserPaddingRight:I

    .line 14294
    :goto_7a
    iget v2, p0, mUserPaddingEnd:I

    if-eq v2, v3, :cond_88

    .line 14295
    iget v2, p0, mUserPaddingEnd:I

    iput v2, p0, mUserPaddingLeft:I

    goto :goto_54

    .line 14292
    :cond_83
    iget v2, p0, mUserPaddingRightInitial:I

    iput v2, p0, mUserPaddingRight:I

    goto :goto_7a

    .line 14297
    :cond_88
    iget v2, p0, mUserPaddingLeftInitial:I

    iput v2, p0, mUserPaddingLeft:I

    goto :goto_54

    .line 14305
    :cond_8d
    iget v2, p0, mUserPaddingLeftInitial:I

    iput v2, p0, mUserPaddingLeft:I

    goto :goto_4c

    .line 14310
    :cond_92
    iget v2, p0, mUserPaddingRightInitial:I

    iput v2, p0, mUserPaddingRight:I

    goto :goto_54

    .line 14314
    :cond_97
    iget v2, p0, mPaddingBottom:I

    goto :goto_5a

    .line 14287
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_72
    .end packed-switch
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .registers 2

    .prologue
    .line 14042
    invoke-direct {p0}, needRtlPropertiesResolution()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 14065
    :goto_7
    return v0

    .line 14045
    :cond_8
    invoke-virtual {p0}, isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_14

    .line 14046
    invoke-virtual {p0}, resolveLayoutDirection()Z

    .line 14047
    invoke-virtual {p0}, resolveLayoutParams()V

    .line 14050
    :cond_14
    invoke-virtual {p0}, isTextDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 14051
    invoke-virtual {p0}, resolveTextDirection()Z

    .line 14053
    :cond_1d
    invoke-virtual {p0}, isTextAlignmentResolved()Z

    move-result v0

    if-nez v0, :cond_26

    .line 14054
    invoke-virtual {p0}, resolveTextAlignment()Z

    .line 14058
    :cond_26
    invoke-direct {p0}, isDrawablesResolved()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 14059
    invoke-virtual {p0}, resolveDrawables()V

    .line 14061
    :cond_2f
    invoke-virtual {p0}, isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_38

    .line 14062
    invoke-virtual {p0}, resolvePadding()V

    .line 14064
    :cond_38
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, onRtlPropertiesChanged(I)V

    .line 14065
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public resolveTextAlignment()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v7, 0x20000

    .line 20380
    iget v5, p0, mPrivateFlags2:I

    const v6, -0xf0001

    and-int/2addr v5, v6

    iput v5, p0, mPrivateFlags2:I

    .line 20382
    invoke-direct {p0}, hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 20384
    invoke-virtual {p0}, getRawTextAlignment()I

    move-result v2

    .line 20385
    .local v2, "textAlignment":I
    packed-switch v2, :pswitch_data_ba

    .line 20446
    iget v3, p0, mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, mPrivateFlags2:I

    .line 20454
    .end local v2    # "textAlignment":I
    :goto_1e
    iget v3, p0, mPrivateFlags2:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    iput v3, p0, mPrivateFlags2:I

    move v3, v4

    .line 20455
    :goto_26
    return v3

    .line 20388
    .restart local v2    # "textAlignment":I
    :pswitch_27
    invoke-virtual {p0}, canResolveTextAlignment()Z

    move-result v5

    if-nez v5, :cond_33

    .line 20390
    iget v4, p0, mPrivateFlags2:I

    or-int/2addr v4, v7

    iput v4, p0, mPrivateFlags2:I

    goto :goto_26

    .line 20397
    :cond_33
    :try_start_33
    iget-object v5, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v5}, Landroid/view/ViewParent;->isTextAlignmentResolved()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 20398
    iget v5, p0, mPrivateFlags2:I

    or-int/2addr v5, v7

    iput v5, p0, mPrivateFlags2:I
    :try_end_40
    .catch Ljava/lang/AbstractMethodError; {:try_start_33 .. :try_end_40} :catch_41

    goto :goto_26

    .line 20402
    :catch_41
    move-exception v0

    .line 20403
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20405
    iget v3, p0, mPrivateFlags2:I

    const/high16 v5, 0x30000

    or-int/2addr v3, v5

    iput v3, p0, mPrivateFlags2:I

    move v3, v4

    .line 20407
    goto :goto_26

    .line 20412
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_6d
    :try_start_6d
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->getTextAlignment()I
    :try_end_72
    .catch Ljava/lang/AbstractMethodError; {:try_start_6d .. :try_end_72} :catch_7c

    move-result v1

    .line 20418
    .local v1, "parentResolvedTextAlignment":I
    :goto_73
    packed-switch v1, :pswitch_data_cc

    .line 20432
    iget v3, p0, mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, mPrivateFlags2:I

    goto :goto_1e

    .line 20413
    .end local v1    # "parentResolvedTextAlignment":I
    :catch_7c
    move-exception v0

    .line 20414
    .restart local v0    # "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20416
    const/4 v1, 0x1

    .restart local v1    # "parentResolvedTextAlignment":I
    goto :goto_73

    .line 20427
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_a1
    iget v3, p0, mPrivateFlags2:I

    shl-int/lit8 v5, v1, 0x11

    or-int/2addr v3, v5

    iput v3, p0, mPrivateFlags2:I

    goto/16 :goto_1e

    .line 20442
    .end local v1    # "parentResolvedTextAlignment":I
    :pswitch_aa
    iget v3, p0, mPrivateFlags2:I

    shl-int/lit8 v5, v2, 0x11

    or-int/2addr v3, v5

    iput v3, p0, mPrivateFlags2:I

    goto/16 :goto_1e

    .line 20450
    .end local v2    # "textAlignment":I
    :cond_b3
    iget v3, p0, mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, mPrivateFlags2:I

    goto/16 :goto_1e

    .line 20385
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_27
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch

    .line 20418
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
    .end packed-switch
.end method

.method public resolveTextDirection()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20147
    iget v5, p0, mPrivateFlags2:I

    and-int/lit16 v5, v5, -0x1e01

    iput v5, p0, mPrivateFlags2:I

    .line 20149
    invoke-direct {p0}, hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 20151
    invoke-virtual {p0}, getRawTextDirection()I

    move-result v2

    .line 20152
    .local v2, "textDirection":I
    packed-switch v2, :pswitch_data_ba

    .line 20209
    iget v3, p0, mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, mPrivateFlags2:I

    .line 20217
    .end local v2    # "textDirection":I
    :goto_1b
    iget v3, p0, mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, mPrivateFlags2:I

    move v3, v4

    .line 20218
    :goto_22
    return v3

    .line 20154
    .restart local v2    # "textDirection":I
    :pswitch_23
    invoke-virtual {p0}, canResolveTextDirection()Z

    move-result v5

    if-nez v5, :cond_30

    .line 20156
    iget v4, p0, mPrivateFlags2:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, mPrivateFlags2:I

    goto :goto_22

    .line 20163
    :cond_30
    :try_start_30
    iget-object v5, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v5}, Landroid/view/ViewParent;->isTextDirectionResolved()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 20164
    iget v5, p0, mPrivateFlags2:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, mPrivateFlags2:I
    :try_end_3e
    .catch Ljava/lang/AbstractMethodError; {:try_start_30 .. :try_end_3e} :catch_3f

    goto :goto_22

    .line 20168
    :catch_3f
    move-exception v0

    .line 20169
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20171
    iget v3, p0, mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x600

    iput v3, p0, mPrivateFlags2:I

    move v3, v4

    .line 20173
    goto :goto_22

    .line 20179
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_6a
    :try_start_6a
    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->getTextDirection()I
    :try_end_6f
    .catch Ljava/lang/AbstractMethodError; {:try_start_6a .. :try_end_6f} :catch_7a

    move-result v1

    .line 20185
    .local v1, "parentResolvedDirection":I
    :goto_70
    packed-switch v1, :pswitch_data_ca

    .line 20196
    iget v3, p0, mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, mPrivateFlags2:I

    goto :goto_1b

    .line 20180
    .end local v1    # "parentResolvedDirection":I
    :catch_7a
    move-exception v0

    .line 20181
    .restart local v0    # "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20183
    const/4 v1, 0x3

    .restart local v1    # "parentResolvedDirection":I
    goto :goto_70

    .line 20191
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_9f
    iget v3, p0, mPrivateFlags2:I

    shl-int/lit8 v5, v1, 0xa

    or-int/2addr v3, v5

    iput v3, p0, mPrivateFlags2:I

    goto/16 :goto_1b

    .line 20205
    .end local v1    # "parentResolvedDirection":I
    :pswitch_a8
    iget v3, p0, mPrivateFlags2:I

    shl-int/lit8 v5, v2, 0xa

    or-int/2addr v3, v5

    iput v3, p0, mPrivateFlags2:I

    goto/16 :goto_1b

    .line 20213
    .end local v2    # "textDirection":I
    :cond_b1
    iget v3, p0, mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, mPrivateFlags2:I

    goto/16 :goto_1b

    .line 20152
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_23
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
    .end packed-switch

    .line 20185
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
    .end packed-switch
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14690
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 14691
    return-void
.end method

.method rootViewRequestFocus()Z
    .registers 3

    .prologue
    .line 5532
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v0

    .line 5533
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, requestFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14624
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 14625
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 14
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 16875
    invoke-virtual {p0, p1}, verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p2, :cond_22

    .line 16876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, p3, v0

    .line 16877
    .local v6, "delay":J
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_23

    .line 16878
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-static {v6, v7}, Landroid/view/Choreographer;->subtractFrameDelay(J)J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 16885
    .end local v6    # "delay":J
    :cond_22
    :goto_22
    return-void

    .line 16882
    .restart local v6    # "delay":J
    :cond_23
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2, v6, v7}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_22
.end method

.method public scrollBy(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 12417
    iget v0, p0, mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, scrollTo(II)V

    .line 12418
    return-void
.end method

.method public scrollTo(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 12396
    iget v2, p0, mScrollX:I

    if-ne v2, p1, :cond_8

    iget v2, p0, mScrollY:I

    if-eq v2, p2, :cond_23

    .line 12397
    :cond_8
    iget v0, p0, mScrollX:I

    .line 12398
    .local v0, "oldX":I
    iget v1, p0, mScrollY:I

    .line 12399
    .local v1, "oldY":I
    iput p1, p0, mScrollX:I

    .line 12400
    iput p2, p0, mScrollY:I

    .line 12401
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 12402
    iget v2, p0, mScrollX:I

    iget v3, p0, mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, onScrollChanged(IIII)V

    .line 12403
    invoke-virtual {p0}, awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_23

    .line 12404
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 12407
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_23
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 5669
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 5670
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 5674
    :goto_9
    return-void

    .line 5672
    :cond_a
    invoke-virtual {p0, p1}, sendAccessibilityEventInternal(I)V

    goto :goto_9
.end method

.method sendAccessibilityEventInternal(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 5702
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5703
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5705
    :cond_13
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5723
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 5724
    iget-object v0, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5728
    :goto_9
    return-void

    .line 5726
    :cond_a
    invoke-virtual {p0, p1}, sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5736
    invoke-virtual {p0}, isShown()Z

    move-result v1

    if-nez v1, :cond_7

    .line 5752
    :cond_6
    :goto_6
    return-void

    .line 5739
    :cond_7
    invoke-virtual {p0, p1}, onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5741
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const v2, 0x2a1bf

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    .line 5742
    invoke-virtual {p0, p1}, dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5745
    :cond_17
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5746
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_6

    .line 5751
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_6
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 2
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 6383
    iput-object p1, p0, mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 6384
    return-void
.end method

.method public setAccessibilityLiveRegion(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 8229
    invoke-virtual {p0}, getAccessibilityLiveRegion()I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 8230
    iget v0, p0, mPrivateFlags2:I

    const v1, -0x1800001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 8231
    iget v0, p0, mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x17

    const/high16 v2, 0x1800000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 8233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 8236
    :cond_1c
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8676
    if-ne p1, p2, :cond_7

    iget v0, p0, mAccessibilityCursorPosition:I

    if-ne p2, v0, :cond_7

    .line 8685
    :goto_6
    return-void

    .line 8679
    :cond_7
    if-ltz p1, :cond_1d

    if-ne p1, p2, :cond_1d

    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1d

    .line 8680
    iput p1, p0, mAccessibilityCursorPosition:I

    .line 8684
    :goto_17
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, sendAccessibilityEvent(I)V

    goto :goto_6

    .line 8682
    :cond_1d
    const/4 v0, -0x1

    iput v0, p0, mAccessibilityCursorPosition:I

    goto :goto_17
.end method

.method public setActivated(Z)V
    .registers 7
    .param p1, "activated"    # Z

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 17797
    iget v2, p0, mPrivateFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_21

    move v2, v3

    :goto_a
    if-eq v2, p1, :cond_20

    .line 17798
    iget v2, p0, mPrivateFlags:I

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v2, v4

    if-eqz p1, :cond_23

    :goto_14
    or-int/2addr v0, v2

    iput v0, p0, mPrivateFlags:I

    .line 17799
    invoke-virtual {p0, v3}, invalidate(Z)V

    .line 17800
    invoke-virtual {p0}, refreshDrawableState()V

    .line 17801
    invoke-virtual {p0, p1}, dispatchSetActivated(Z)V

    .line 17803
    :cond_20
    return-void

    :cond_21
    move v2, v1

    .line 17797
    goto :goto_a

    :cond_23
    move v0, v1

    .line 17798
    goto :goto_14
.end method

.method public setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .registers 2
    .param p1, "airbutton"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 9813
    iput-object p1, p0, mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 9814
    return-void
.end method

.method public setAlpha(F)V
    .registers 6
    .param p1, "alpha"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11447
    invoke-virtual {p0}, ensureTransformationInfo()V

    .line 11448
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_28

    .line 11449
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 11450
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 11451
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 11453
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 11454
    invoke-virtual {p0, v3}, invalidate(Z)V

    .line 11463
    :cond_28
    :goto_28
    return-void

    .line 11456
    :cond_29
    iget v0, p0, mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 11457
    invoke-virtual {p0, v3, v2}, invalidateViewProperty(ZZ)V

    .line 11458
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0}, getFinalAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 11459
    invoke-virtual {p0, v2}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_28
.end method

.method setAlphaNoInvalidation(F)Z
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    .line 11476
    invoke-virtual {p0}, ensureTransformationInfo()V

    .line 11477
    iget-object v1, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_33

    .line 11478
    iget-object v1, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 11479
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, onSetAlpha(I)Z

    move-result v0

    .line 11480
    .local v0, "subclassHandlesAlpha":Z
    if-eqz v0, :cond_22

    .line 11481
    iget v1, p0, mPrivateFlags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 11482
    const/4 v1, 0x1

    .line 11488
    .end local v0    # "subclassHandlesAlpha":Z
    :goto_21
    return v1

    .line 11484
    .restart local v0    # "subclassHandlesAlpha":Z
    :cond_22
    iget v1, p0, mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, mPrivateFlags:I

    .line 11485
    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0}, getFinalAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 11488
    .end local v0    # "subclassHandlesAlpha":Z
    :cond_33
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 18939
    iput-object p1, p0, mCurrentAnimation:Landroid/view/animation/Animation;

    .line 18941
    if-eqz p1, :cond_23

    .line 18945
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_20

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 18947
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 18949
    :cond_20
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 18951
    :cond_23
    return-void
.end method

.method public setAnimationMatrix(Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11961
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11962
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    .line 11963
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11965
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11966
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 17247
    invoke-virtual {p0, p1}, setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17248
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 17201
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_18

    .line 17202
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 17203
    invoke-virtual {p0}, computeOpaqueFlags()V

    .line 17204
    const/4 v0, 0x0

    iput v0, p0, mBackgroundResource:I

    .line 17208
    :goto_17
    return-void

    .line 17206
    :cond_18
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 17255
    invoke-virtual {p0}, computeOpaqueFlags()V

    .line 17257
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_b

    .line 17359
    :goto_a
    return-void

    .line 17261
    :cond_b
    const/4 v1, 0x0

    .line 17263
    .local v1, "requestLayout":Z
    iput v4, p0, mBackgroundResource:I

    .line 17269
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1c

    .line 17270
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 17271
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17274
    :cond_1c
    if-eqz p1, :cond_ec

    .line 17275
    sget-object v2, sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 17276
    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_32

    .line 17277
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17278
    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17280
    :cond_32
    invoke-virtual {p0}, resetResolvedDrawables()V

    .line 17281
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 17282
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 17283
    invoke-virtual {p0}, resetResolvedPadding()V

    .line 17284
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    packed-switch v2, :pswitch_data_102

    .line 17292
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, mUserPaddingLeftInitial:I

    .line 17293
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, mUserPaddingRightInitial:I

    .line 17294
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, internalSetPadding(IIII)V

    .line 17296
    :goto_5f
    iput-boolean v4, p0, mLeftPaddingDefined:Z

    .line 17297
    iput-boolean v4, p0, mRightPaddingDefined:Z

    .line 17302
    :cond_63
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7f

    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v2, v5, :cond_7f

    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    if-eq v2, v5, :cond_80

    .line 17305
    :cond_7f
    const/4 v1, 0x1

    .line 17308
    :cond_80
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 17309
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 17310
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 17312
    :cond_90
    invoke-virtual {p0}, getVisibility()I

    move-result v2

    if-nez v2, :cond_ea

    move v2, v3

    :goto_97
    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 17313
    iput-object p1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 17314
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_b0

    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isImagePath()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 17315
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getImagePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mBackgroundPath:Ljava/lang/CharSequence;

    .line 17318
    :cond_b0
    invoke-direct {p0}, applyBackgroundTint()V

    .line 17320
    iget v2, p0, mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c6

    .line 17321
    iget v2, p0, mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, mPrivateFlags:I

    .line 17322
    iget v2, p0, mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, mPrivateFlags:I

    .line 17323
    const/4 v1, 0x1

    .line 17351
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_c6
    :goto_c6
    invoke-virtual {p0}, computeOpaqueFlags()V

    .line 17353
    if-eqz v1, :cond_ce

    .line 17354
    invoke-virtual {p0}, requestLayout()V

    .line 17357
    :cond_ce
    iput-boolean v3, p0, mBackgroundSizeChanged:Z

    .line 17358
    invoke-virtual {p0, v3}, invalidate(Z)V

    goto/16 :goto_a

    .line 17286
    .restart local v0    # "padding":Landroid/graphics/Rect;
    :pswitch_d5
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, mUserPaddingLeftInitial:I

    .line 17287
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, mUserPaddingRightInitial:I

    .line 17288
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, internalSetPadding(IIII)V

    goto/16 :goto_5f

    :cond_ea
    move v2, v4

    .line 17312
    goto :goto_97

    .line 17327
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_ec
    iput-object v5, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 17329
    iget v2, p0, mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_100

    .line 17335
    iget v2, p0, mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, mPrivateFlags:I

    .line 17336
    iget v2, p0, mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, mPrivateFlags:I

    .line 17348
    :cond_100
    const/4 v1, 0x1

    goto :goto_c6

    .line 17284
    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_d5
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 17219
    if-eqz p1, :cond_7

    iget v1, p0, mBackgroundResource:I

    if-ne p1, v1, :cond_7

    .line 17233
    :goto_6
    return-void

    .line 17226
    :cond_7
    const/4 v0, 0x0

    .line 17227
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_10

    .line 17228
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 17230
    :cond_10
    invoke-virtual {p0, v0}, setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17232
    iput p1, p0, mBackgroundResource:I

    goto :goto_6
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 17389
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    if-nez v0, :cond_c

    .line 17390
    new-instance v0, Landroid/view/View$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/View$TintInfo;-><init>(Landroid/view/View$1;)V

    iput-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    .line 17392
    :cond_c
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    iput-object p1, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 17393
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    .line 17395
    invoke-direct {p0}, applyBackgroundTint()V

    .line 17396
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 17422
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    if-nez v0, :cond_c

    .line 17423
    new-instance v0, Landroid/view/View$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/View$TintInfo;-><init>(Landroid/view/View$1;)V

    iput-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    .line 17425
    :cond_c
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    iput-object p1, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 17426
    iget-object v0, p0, mBackgroundTint:Landroid/view/View$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    .line 17428
    invoke-direct {p0}, applyBackgroundTint()V

    .line 17429
    return-void
.end method

.method public final setBottom(I)V
    .registers 11
    .param p1, "bottom"    # I

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 11621
    iget v4, p0, mBottom:I

    if-eq p1, v4, :cond_59

    .line 11622
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v0

    .line 11623
    .local v0, "matrixIsIdentity":Z
    if-eqz v0, :cond_5c

    .line 11624
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_24

    .line 11626
    iget v4, p0, mBottom:I

    if-ge p1, v4, :cond_5a

    .line 11627
    iget v1, p0, mBottom:I

    .line 11631
    .local v1, "maxBottom":I
    :goto_18
    iget v4, p0, mRight:I

    iget v5, p0, mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, mTop:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v7, v7, v4, v5}, invalidate(IIII)V

    .line 11638
    .end local v1    # "maxBottom":I
    :cond_24
    :goto_24
    iget v4, p0, mRight:I

    iget v5, p0, mLeft:I

    sub-int v3, v4, v5

    .line 11639
    .local v3, "width":I
    iget v4, p0, mBottom:I

    iget v5, p0, mTop:I

    sub-int v2, v4, v5

    .line 11641
    .local v2, "oldHeight":I
    iput p1, p0, mBottom:I

    .line 11642
    iget-object v4, p0, mRenderNode:Landroid/view/RenderNode;

    iget v5, p0, mBottom:I

    invoke-virtual {v4, v5}, Landroid/view/RenderNode;->setBottom(I)Z

    .line 11644
    iget v4, p0, mBottom:I

    iget v5, p0, mTop:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4, v3, v2}, sizeChange(IIII)V

    .line 11646
    if-nez v0, :cond_4c

    .line 11647
    iget v4, p0, mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, mPrivateFlags:I

    .line 11648
    invoke-virtual {p0, v6}, invalidate(Z)V

    .line 11650
    :cond_4c
    iput-boolean v6, p0, mBackgroundSizeChanged:Z

    .line 11651
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 11652
    iget v4, p0, mPrivateFlags2:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_59

    .line 11654
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 11657
    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_59
    return-void

    .line 11629
    .restart local v0    # "matrixIsIdentity":Z
    :cond_5a
    move v1, p1

    .restart local v1    # "maxBottom":I
    goto :goto_18

    .line 11635
    .end local v1    # "maxBottom":I
    :cond_5c
    invoke-virtual {p0, v6}, invalidate(Z)V

    goto :goto_24
.end method

.method public setCameraDistance(F)V
    .registers 6
    .param p1, "distance"    # F

    .prologue
    const/4 v3, 0x0

    .line 11091
    iget-object v1, p0, mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v1

    .line 11093
    .local v0, "dpi":F
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, invalidateViewProperty(ZZ)V

    .line 11094
    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    .line 11095
    invoke-virtual {p0, v3, v3}, invalidateViewProperty(ZZ)V

    .line 11097
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11098
    return-void
.end method

.method public setClickable(Z)V
    .registers 4
    .param p1, "clickable"    # Z

    .prologue
    const/16 v1, 0x4000

    .line 7511
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7512
    return-void

    .line 7511
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 15683
    if-eqz p1, :cond_52

    .line 15684
    iget-object v0, p0, mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15704
    :goto_a
    return-void

    .line 15687
    :cond_b
    iget-object v0, p0, mClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_21

    .line 15688
    invoke-virtual {p0}, invalidate()V

    .line 15689
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, mClipBounds:Landroid/graphics/Rect;

    .line 15703
    :cond_19
    :goto_19
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    iget-object v1, p0, mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setClipBounds(Landroid/graphics/Rect;)Z

    goto :goto_a

    .line 15691
    :cond_21
    iget-object v0, p0, mClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, mClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, mClipBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, invalidate(IIII)V

    .line 15695
    iget-object v0, p0, mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_19

    .line 15698
    :cond_52
    iget-object v0, p0, mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_19

    .line 15699
    invoke-virtual {p0}, invalidate()V

    .line 15700
    const/4 v0, 0x0

    iput-object v0, p0, mClipBounds:Landroid/graphics/Rect;

    goto :goto_19
.end method

.method public setClipToOutline(Z)V
    .registers 3
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 12031
    invoke-virtual {p0}, damageInParent()V

    .line 12032
    invoke-virtual {p0}, getClipToOutline()Z

    move-result v0

    if-eq v0, p1, :cond_e

    .line 12033
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    .line 12035
    :cond_e
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 6472
    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_8

    .line 6473
    if-nez p1, :cond_10

    .line 6488
    :cond_7
    :goto_7
    return-void

    .line 6476
    :cond_8
    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 6479
    :cond_10
    iput-object p1, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 6480
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2a

    move v0, v1

    .line 6481
    .local v0, "nonEmptyDesc":Z
    :goto_1b
    if-eqz v0, :cond_2c

    invoke-virtual {p0}, getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2c

    .line 6482
    invoke-virtual {p0, v1}, setImportantForAccessibility(I)V

    .line 6483
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto :goto_7

    .line 6480
    .end local v0    # "nonEmptyDesc":Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1b

    .line 6485
    .restart local v0    # "nonEmptyDesc":Z
    :cond_2c
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_7
.end method

.method public setDisabledSystemUiVisibility(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 19225
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_17

    .line 19226
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    if-eq v0, p1, :cond_17

    .line 19227
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    .line 19228
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_17

    .line 19229
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 19233
    :cond_17
    return-void
.end method

.method setDisplayListProperties(Landroid/view/RenderNode;)V
    .registers 9
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 15781
    if-eqz p1, :cond_83

    .line 15782
    iget v5, p0, mPrivateFlags3:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_13

    .line 15783
    invoke-direct {p0}, rebuildOutline()V

    .line 15784
    iget v5, p0, mPrivateFlags3:I

    and-int/lit16 v5, v5, -0x101

    iput v5, p0, mPrivateFlags3:I

    .line 15786
    :cond_13
    invoke-virtual {p0}, hasOverlappingRendering()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 15787
    iget-object v5, p0, mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2e

    .line 15788
    iget-object v5, p0, mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/ViewGroup;

    iget v5, v5, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_84

    const/4 v5, 0x1

    :goto_2b
    invoke-virtual {p1, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 15791
    :cond_2e
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15792
    .local v0, "alpha":F
    iget-object v5, p0, mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_67

    iget-object v5, p0, mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/ViewGroup;

    iget v5, v5, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_67

    .line 15794
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    .line 15795
    .local v2, "parentVG":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    .line 15796
    .local v3, "t":Landroid/view/animation/Transformation;
    invoke-virtual {v2, p0, v3}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 15797
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v4

    .line 15798
    .local v4, "transformType":I
    if-eqz v4, :cond_67

    .line 15799
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_5c

    .line 15800
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    .line 15802
    :cond_5c
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_67

    .line 15803
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/RenderNode;->setStaticMatrix(Landroid/graphics/Matrix;)Z

    .line 15808
    .end local v2    # "parentVG":Landroid/view/ViewGroup;
    .end local v3    # "t":Landroid/view/animation/Transformation;
    .end local v4    # "transformType":I
    :cond_67
    iget-object v5, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v5, :cond_86

    .line 15809
    invoke-direct {p0}, getFinalAlpha()F

    move-result v5

    mul-float/2addr v0, v5

    .line 15810
    cmpg-float v5, v0, v6

    if-gez v5, :cond_80

    .line 15811
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v1, v5

    .line 15812
    .local v1, "multipliedAlpha":I
    invoke-virtual {p0, v1}, onSetAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 15813
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15816
    .end local v1    # "multipliedAlpha":I
    :cond_80
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 15821
    .end local v0    # "alpha":F
    :cond_83
    :goto_83
    return-void

    .line 15788
    :cond_84
    const/4 v5, 0x0

    goto :goto_2b

    .line 15817
    .restart local v0    # "alpha":F
    :cond_86
    cmpg-float v5, v0, v6

    if-gez v5, :cond_83

    .line 15818
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setAlpha(F)Z

    goto :goto_83
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I

    .prologue
    .line 15257
    iget v0, p0, mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_e

    .line 15258
    iput p1, p0, mDrawingCacheBackgroundColor:I

    .line 15259
    iget v0, p0, mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 15261
    :cond_e
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 15019
    iput-boolean v0, p0, mCachingFailed:Z

    .line 15020
    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 15021
    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .registers 3
    .param p1, "quality"    # I

    .prologue
    .line 6636
    const/high16 v0, 0x180000

    invoke-virtual {p0, p1, v0}, setFlags(II)V

    .line 6637
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 14775
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 14776
    return-void

    .line 14775
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setElevation(F)V
    .registers 5
    .param p1, "elevation"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11859
    invoke-virtual {p0}, getElevation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_18

    .line 11860
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11861
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setElevation(F)Z

    .line 11862
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11864
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11866
    :cond_18
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 7159
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_9

    .line 7176
    :cond_8
    :goto_8
    return-void

    .line 7161
    :cond_9
    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7167
    invoke-virtual {p0}, refreshDrawableState()V

    .line 7171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 7173
    if-nez p1, :cond_8

    .line 7174
    invoke-virtual {p0}, cancelPendingInputEvents()V

    goto :goto_8

    :cond_1c
    move v0, v1

    .line 7161
    goto :goto_c
.end method

.method public setFadingEdgeLength(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 4808
    invoke-direct {p0}, initScrollCache()V

    .line 4809
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4810
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x400

    .line 7667
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7669
    return-void

    .line 7667
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setFingerHovered(Z)V
    .registers 7
    .param p1, "fingerHovered"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10298
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_information_preview"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_22

    .line 10300
    .local v0, "isFingerAirViewPreview":Z
    :goto_11
    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 10301
    iget v1, p0, mTouchwizFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_21

    .line 10302
    iget v1, p0, mTouchwizFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, mTouchwizFlags:I

    .line 10309
    :cond_21
    :goto_21
    return-void

    .end local v0    # "isFingerAirViewPreview":Z
    :cond_22
    move v0, v1

    .line 10298
    goto :goto_11

    .line 10305
    .restart local v0    # "isFingerAirViewPreview":Z
    :cond_24
    iget v1, p0, mTouchwizFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_21

    .line 10306
    iget v1, p0, mTouchwizFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, mTouchwizFlags:I

    goto :goto_21
.end method

.method public setFingerHoveredInAppWidget(Z)V
    .registers 2
    .param p1, "fingerHovered"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 10274
    iput-boolean p1, p0, mIsSetFingerHovedInAppWidget:Z

    .line 10275
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .registers 4
    .param p1, "fitSystemWindows"    # Z

    .prologue
    const/4 v1, 0x2

    .line 7061
    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7062
    return-void

    .line 7061
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method setFlags(II)V
    .registers 14
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const v10, -0x8001

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 10585
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 10587
    .local v0, "accessibilityEnabled":Z
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, includeForAccessibility()Z

    move-result v6

    if-eqz v6, :cond_2b

    move v4, v7

    .line 10589
    .local v4, "oldIncludeForAccessibility":Z
    :goto_18
    iget v3, p0, mViewFlags:I

    .line 10590
    .local v3, "old":I
    iget v6, p0, mViewFlags:I

    xor-int/lit8 v9, p2, -0x1

    and-int/2addr v6, v9

    and-int v9, p1, p2

    or-int/2addr v6, v9

    iput v6, p0, mViewFlags:I

    .line 10592
    iget v6, p0, mViewFlags:I

    xor-int v1, v6, v3

    .line 10593
    .local v1, "changed":I
    if-nez v1, :cond_2d

    .line 10749
    :cond_2a
    :goto_2a
    return-void

    .end local v1    # "changed":I
    .end local v3    # "old":I
    .end local v4    # "oldIncludeForAccessibility":Z
    :cond_2b
    move v4, v8

    .line 10587
    goto :goto_18

    .line 10596
    .restart local v1    # "changed":I
    .restart local v3    # "old":I
    .restart local v4    # "oldIncludeForAccessibility":Z
    :cond_2d
    iget v5, p0, mPrivateFlags:I

    .line 10599
    .local v5, "privateFlags":I
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_42

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_42

    .line 10601
    and-int/lit8 v6, v3, 0x1

    if-ne v6, v7, :cond_17a

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_17a

    .line 10604
    invoke-virtual {p0}, clearFocus()V

    .line 10615
    :cond_42
    :goto_42
    and-int/lit8 v2, p1, 0xc

    .line 10616
    .local v2, "newVisibility":I
    if-nez v2, :cond_6b

    .line 10617
    and-int/lit8 v6, v1, 0xc

    if-eqz v6, :cond_6b

    .line 10623
    iget v6, p0, mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, mPrivateFlags:I

    .line 10624
    invoke-virtual {p0, v7}, invalidate(Z)V

    .line 10626
    invoke-virtual {p0, v7}, needGlobalAttributesUpdate(Z)V

    .line 10632
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_6b

    iget v6, p0, mBottom:I

    iget v9, p0, mTop:I

    if-le v6, v9, :cond_6b

    iget v6, p0, mRight:I

    iget v9, p0, mLeft:I

    if-le v6, v9, :cond_6b

    .line 10633
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 10639
    :cond_6b
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_a7

    .line 10640
    invoke-virtual {p0, v8}, needGlobalAttributesUpdate(Z)V

    .line 10641
    invoke-virtual {p0}, requestLayout()V

    .line 10643
    iget v6, p0, mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v9, 0x8

    if-ne v6, v9, :cond_9f

    .line 10644
    invoke-virtual {p0}, hasFocus()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-virtual {p0}, clearFocus()V

    .line 10645
    :cond_86
    invoke-virtual {p0}, clearAccessibilityFocus()V

    .line 10646
    invoke-virtual {p0}, destroyDrawingCache()V

    .line 10647
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_99

    .line 10649
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v7}, invalidate(Z)V

    .line 10653
    :cond_99
    iget v6, p0, mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, mPrivateFlags:I

    .line 10655
    :cond_9f
    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_a7

    .line 10656
    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 10661
    :cond_a7
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_d5

    .line 10662
    invoke-virtual {p0, v8}, needGlobalAttributesUpdate(Z)V

    .line 10667
    iget v6, p0, mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, mPrivateFlags:I

    .line 10669
    iget v6, p0, mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/4 v9, 0x4

    if-ne v6, v9, :cond_cd

    .line 10671
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v6

    if-eq v6, p0, :cond_cd

    .line 10672
    invoke-virtual {p0}, hasFocus()Z

    move-result v6

    if-eqz v6, :cond_ca

    invoke-virtual {p0}, clearFocus()V

    .line 10673
    :cond_ca
    invoke-virtual {p0}, clearAccessibilityFocus()V

    .line 10676
    :cond_cd
    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_d5

    .line 10677
    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 10681
    :cond_d5
    and-int/lit8 v6, v1, 0xc

    if-eqz v6, :cond_fe

    .line 10683
    if-eqz v2, :cond_e2

    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_e2

    .line 10684
    invoke-direct {p0}, cleanupDraw()V

    .line 10687
    :cond_e2
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_18d

    .line 10688
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    and-int/lit8 v9, v1, 0xc

    invoke-virtual {v6, p0, v9, v2}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 10690
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v7}, invalidate(Z)V

    .line 10694
    :cond_f8
    :goto_f8
    invoke-virtual {p0, p0, v2}, dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 10696
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 10699
    :cond_fe
    const/high16 v6, 0x20000

    and-int/2addr v6, v1

    if-eqz v6, :cond_106

    .line 10700
    invoke-virtual {p0}, destroyDrawingCache()V

    .line 10703
    :cond_106
    const v6, 0x8000

    and-int/2addr v6, v1

    if-eqz v6, :cond_117

    .line 10704
    invoke-virtual {p0}, destroyDrawingCache()V

    .line 10705
    iget v6, p0, mPrivateFlags:I

    and-int/2addr v6, v10

    iput v6, p0, mPrivateFlags:I

    .line 10706
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 10709
    :cond_117
    const/high16 v6, 0x180000

    and-int/2addr v6, v1

    if-eqz v6, :cond_124

    .line 10710
    invoke-virtual {p0}, destroyDrawingCache()V

    .line 10711
    iget v6, p0, mPrivateFlags:I

    and-int/2addr v6, v10

    iput v6, p0, mPrivateFlags:I

    .line 10714
    :cond_124
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_144

    .line 10715
    iget v6, p0, mViewFlags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_1a0

    .line 10716
    iget-object v6, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_199

    .line 10717
    iget v6, p0, mPrivateFlags:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, mPrivateFlags:I

    .line 10718
    iget v6, p0, mPrivateFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, mPrivateFlags:I

    .line 10725
    :goto_13e
    invoke-virtual {p0}, requestLayout()V

    .line 10726
    invoke-virtual {p0, v7}, invalidate(Z)V

    .line 10729
    :cond_144
    const/high16 v6, 0x4000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_15c

    .line 10730
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_15c

    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_15c

    iget-object v6, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v6, :cond_15c

    .line 10731
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 10735
    :cond_15c
    if-eqz v0, :cond_2a

    .line 10736
    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_16f

    and-int/lit8 v6, v1, 0xc

    if-nez v6, :cond_16f

    and-int/lit16 v6, v1, 0x4000

    if-nez v6, :cond_16f

    const/high16 v6, 0x200000

    and-int/2addr v6, v1

    if-eqz v6, :cond_1ac

    .line 10738
    :cond_16f
    invoke-virtual {p0}, includeForAccessibility()Z

    move-result v6

    if-eq v4, v6, :cond_1a7

    .line 10739
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto/16 :goto_2a

    .line 10605
    .end local v2    # "newVisibility":I
    :cond_17a
    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_42

    and-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_42

    .line 10611
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_42

    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_42

    .line 10691
    .restart local v2    # "newVisibility":I
    :cond_18d
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_f8

    .line 10692
    iget-object v6, p0, mParent:Landroid/view/ViewParent;

    const/4 v9, 0x0

    invoke-interface {v6, p0, v9}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_f8

    .line 10720
    :cond_199
    iget v6, p0, mPrivateFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, mPrivateFlags:I

    goto :goto_13e

    .line 10723
    :cond_1a0
    iget v6, p0, mPrivateFlags:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, mPrivateFlags:I

    goto :goto_13e

    .line 10741
    :cond_1a7
    invoke-virtual {p0, v8}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_2a

    .line 10744
    :cond_1ac
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2a

    .line 10745
    invoke-virtual {p0, v8}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_2a
.end method

.method public setFocusable(Z)V
    .registers 5
    .param p1, "focusable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7190
    if-nez p1, :cond_9

    .line 7191
    const/high16 v2, 0x40000

    invoke-virtual {p0, v0, v2}, setFlags(II)V

    .line 7193
    :cond_9
    if-eqz p1, :cond_c

    move v0, v1

    :cond_c
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7194
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5
    .param p1, "focusableInTouchMode"    # Z

    .prologue
    const/high16 v1, 0x40000

    const/4 v2, 0x1

    .line 7212
    if-eqz p1, :cond_f

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7213
    if-eqz p1, :cond_e

    .line 7214
    invoke-virtual {p0, v2, v2}, setFlags(II)V

    .line 7216
    :cond_e
    return-void

    .line 7212
    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected setFrame(IIII)Z
    .registers 18
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 16760
    const/4 v1, 0x0

    .line 16767
    .local v1, "changed":Z
    iget v8, p0, mLeft:I

    if-ne v8, p1, :cond_15

    iget v8, p0, mRight:I

    move/from16 v0, p3

    if-ne v8, v0, :cond_15

    iget v8, p0, mTop:I

    if-ne v8, p2, :cond_15

    iget v8, p0, mBottom:I

    move/from16 v0, p4

    if-eq v8, v0, :cond_73

    .line 16768
    :cond_15
    const/4 v1, 0x1

    .line 16771
    iget v8, p0, mPrivateFlags:I

    and-int/lit8 v2, v8, 0x20

    .line 16773
    .local v2, "drawn":I
    iget v8, p0, mRight:I

    iget v9, p0, mLeft:I

    sub-int v6, v8, v9

    .line 16774
    .local v6, "oldWidth":I
    iget v8, p0, mBottom:I

    iget v9, p0, mTop:I

    sub-int v5, v8, v9

    .line 16775
    .local v5, "oldHeight":I
    sub-int v4, p3, p1

    .line 16776
    .local v4, "newWidth":I
    sub-int v3, p4, p2

    .line 16777
    .local v3, "newHeight":I
    if-ne v4, v6, :cond_2e

    if-eq v3, v5, :cond_74

    :cond_2e
    const/4 v7, 0x1

    .line 16780
    .local v7, "sizeChanged":Z
    :goto_2f
    invoke-virtual {p0, v7}, invalidate(Z)V

    .line 16782
    iput p1, p0, mLeft:I

    .line 16783
    iput p2, p0, mTop:I

    .line 16784
    move/from16 v0, p3

    iput v0, p0, mRight:I

    .line 16785
    move/from16 v0, p4

    iput v0, p0, mBottom:I

    .line 16786
    iget-object v8, p0, mRenderNode:Landroid/view/RenderNode;

    iget v9, p0, mLeft:I

    iget v10, p0, mTop:I

    iget v11, p0, mRight:I

    iget v12, p0, mBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 16788
    iget v8, p0, mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, mPrivateFlags:I

    .line 16791
    if-eqz v7, :cond_56

    .line 16792
    invoke-direct {p0, v4, v3, v6, v5}, sizeChange(IIII)V

    .line 16795
    :cond_56
    iget v8, p0, mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_68

    .line 16801
    iget v8, p0, mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, mPrivateFlags:I

    .line 16802
    invoke-virtual {p0, v7}, invalidate(Z)V

    .line 16805
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 16809
    :cond_68
    iget v8, p0, mPrivateFlags:I

    or-int/2addr v8, v2

    iput v8, p0, mPrivateFlags:I

    .line 16811
    const/4 v8, 0x1

    iput-boolean v8, p0, mBackgroundSizeChanged:Z

    .line 16813
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 16815
    .end local v2    # "drawn":I
    .end local v3    # "newHeight":I
    .end local v4    # "newWidth":I
    .end local v5    # "oldHeight":I
    .end local v6    # "oldWidth":I
    .end local v7    # "sizeChanged":Z
    :cond_73
    return v1

    .line 16777
    .restart local v2    # "drawn":I
    .restart local v3    # "newHeight":I
    .restart local v4    # "newWidth":I
    .restart local v5    # "oldHeight":I
    .restart local v6    # "oldWidth":I
    :cond_74
    const/4 v7, 0x0

    goto :goto_2f
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 4
    .param p1, "hapticFeedbackEnabled"    # Z

    .prologue
    const/high16 v1, 0x10000000

    .line 7260
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7261
    return-void

    .line 7260
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setHasTransientState(Z)V
    .registers 6
    .param p1, "hasTransientState"    # Z

    .prologue
    const/4 v2, 0x0

    .line 7402
    if-eqz p1, :cond_17

    iget v1, p0, mTransientStateCount:I

    add-int/lit8 v1, v1, 0x1

    :goto_7
    iput v1, p0, mTransientStateCount:I

    .line 7404
    iget v1, p0, mTransientStateCount:I

    if-gez v1, :cond_1c

    .line 7405
    iput v2, p0, mTransientStateCount:I

    .line 7406
    const-string v1, "View"

    const-string v2, "hasTransientState decremented below 0: unmatched pair of setHasTransientState calls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7422
    :cond_16
    :goto_16
    return-void

    .line 7402
    :cond_17
    iget v1, p0, mTransientStateCount:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 7408
    :cond_1c
    if-eqz p1, :cond_23

    iget v1, p0, mTransientStateCount:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_29

    :cond_23
    if-nez p1, :cond_16

    iget v1, p0, mTransientStateCount:I

    if-nez v1, :cond_16

    .line 7411
    :cond_29
    iget v1, p0, mPrivateFlags2:I

    const v3, 0x7fffffff

    and-int/2addr v3, v1

    if-eqz p1, :cond_64

    const/high16 v1, -0x80000000

    :goto_33
    or-int/2addr v1, v3

    iput v1, p0, mPrivateFlags2:I

    .line 7413
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_16

    .line 7415
    :try_start_3a
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_3f
    .catch Ljava/lang/AbstractMethodError; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_16

    .line 7416
    :catch_40
    move-exception v0

    .line 7417
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_64
    move v1, v2

    .line 7411
    goto :goto_33
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .registers 3
    .param p1, "horizontalFadingEdgeEnabled"    # Z

    .prologue
    .line 13269
    invoke-virtual {p0}, isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 13270
    if-eqz p1, :cond_b

    .line 13271
    invoke-direct {p0}, initScrollCache()V

    .line 13274
    :cond_b
    iget v0, p0, mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, mViewFlags:I

    .line 13276
    :cond_11
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .registers 3
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 13396
    invoke-virtual {p0}, isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 13397
    iget v0, p0, mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, mViewFlags:I

    .line 13398
    invoke-virtual {p0}, computeOpaqueFlags()V

    .line 13399
    invoke-virtual {p0}, resolvePadding()V

    .line 13401
    :cond_12
    return-void
.end method

.method public setHoverPopup(Landroid/widget/HoverPopupWindow;)V
    .registers 2
    .param p1, "hoverPopup"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 22418
    iput-object p1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 22419
    return-void
.end method

.method public setHoverPopupType(I)V
    .registers 3
    .param p1, "type"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 22393
    invoke-virtual {p0}, isHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22394
    iput p1, p0, mHoverPopupType:I

    .line 22396
    :cond_8
    return-void
.end method

.method protected setHoverPopupWindowSettings(I)Z
    .registers 6
    .param p1, "tooltype"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22496
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v2, :cond_52

    .line 22497
    if-ne p1, v3, :cond_2f

    .line 22498
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setHoverPopupToolType(I)V

    .line 22499
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v1, v1}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    .line 22500
    iget v2, p0, mHoverPopupType:I

    packed-switch v2, :pswitch_data_54

    .line 22529
    :cond_18
    :goto_18
    :pswitch_18
    return v0

    .line 22502
    :pswitch_19
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v1, v1}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 22503
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v1, v1}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    goto :goto_18

    .line 22506
    :pswitch_24
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v0, v1}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 22507
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v0, v1}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    goto :goto_18

    .line 22512
    :cond_2f
    if-ne p1, v0, :cond_18

    .line 22513
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/HoverPopupWindow;->setHoverPopupToolType(I)V

    .line 22514
    iget v2, p0, mHoverPopupType:I

    packed-switch v2, :pswitch_data_5c

    goto :goto_18

    .line 22518
    :pswitch_3c
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v0, v1}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    .line 22519
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v0, v1}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 22520
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v0, v1}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    goto :goto_18

    .line 22523
    :pswitch_4c
    iget-object v2, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2, v0, v1}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    goto :goto_18

    :cond_52
    move v0, v1

    .line 22529
    goto :goto_18

    .line 22500
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_19
        :pswitch_24
    .end packed-switch

    .line 22514
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_3c
        :pswitch_4c
    .end packed-switch
.end method

.method public setHovered(Z)V
    .registers 4
    .param p1, "hovered"    # Z

    .prologue
    const/high16 v1, 0x10000000

    .line 10124
    if-eqz p1, :cond_16

    .line 10125
    iget v0, p0, mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 10126
    iget v0, p0, mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 10127
    invoke-virtual {p0}, refreshDrawableState()V

    .line 10128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, onHoverChanged(Z)V

    .line 10137
    :cond_15
    :goto_15
    return-void

    .line 10131
    :cond_16
    iget v0, p0, mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 10132
    iget v0, p0, mPrivateFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 10133
    invoke-virtual {p0}, refreshDrawableState()V

    .line 10134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, onHoverChanged(Z)V

    goto :goto_15
.end method

.method public setId(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 18237
    iput p1, p0, mID:I

    .line 18238
    iget v0, p0, mID:I

    if-ne v0, v1, :cond_11

    iget v0, p0, mLabelForId:I

    if-eq v0, v1, :cond_11

    .line 18239
    invoke-static {}, generateViewId()I

    move-result v0

    iput v0, p0, mID:I

    .line 18241
    :cond_11
    return-void
.end method

.method public setImageFilter(Landroid/graphics/ImageFilter;)Z
    .registers 4
    .param p1, "filter"    # Landroid/graphics/ImageFilter;

    .prologue
    .line 4454
    const-string v0, "HWUI_IMAGE_FILTER"

    const-string v1, "Should set SEC_PRODUCT_FEATURE_COMMON_SUPPORT_HWUI_IMAGE_FILTER to true in SecProductFeature_COMMON ."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4455
    const/4 v0, 0x0

    return v0
.end method

.method public setImportantForAccessibility(I)V
    .registers 9
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 8267
    invoke-virtual {p0}, getImportantForAccessibility()I

    move-result v2

    .line 8268
    .local v2, "oldMode":I
    if-eq p1, v2, :cond_32

    .line 8272
    if-eqz v2, :cond_c

    if-nez p1, :cond_33

    :cond_c
    move v0, v1

    .line 8274
    .local v0, "maySkipNotify":Z
    :goto_d
    if-eqz v0, :cond_35

    invoke-virtual {p0}, includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 8275
    .local v1, "oldIncludeForAccessibility":Z
    :goto_15
    iget v4, p0, mPrivateFlags2:I

    const v5, -0x700001

    and-int/2addr v4, v5

    iput v4, p0, mPrivateFlags2:I

    .line 8276
    iget v4, p0, mPrivateFlags2:I

    shl-int/lit8 v5, p1, 0x14

    const/high16 v6, 0x700000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, mPrivateFlags2:I

    .line 8278
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, includeForAccessibility()Z

    move-result v4

    if-eq v1, v4, :cond_37

    .line 8279
    :cond_2f
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 8285
    .end local v0    # "maySkipNotify":Z
    .end local v1    # "oldIncludeForAccessibility":Z
    :cond_32
    :goto_32
    return-void

    :cond_33
    move v0, v3

    .line 8272
    goto :goto_d

    .restart local v0    # "maySkipNotify":Z
    :cond_35
    move v1, v3

    .line 8274
    goto :goto_15

    .line 8281
    .restart local v1    # "oldIncludeForAccessibility":Z
    :cond_37
    invoke-virtual {p0, v3}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_32
.end method

.method public setIsRootNamespace(Z)V
    .registers 3
    .param p1, "isRoot"    # Z

    .prologue
    .line 18250
    if-eqz p1, :cond_9

    .line 18251
    iget v0, p0, mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, mPrivateFlags:I

    .line 18255
    :goto_8
    return-void

    .line 18253
    :cond_9
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, mPrivateFlags:I

    goto :goto_8
.end method

.method public setKeepScreenOn(Z)V
    .registers 4
    .param p1, "keepScreenOn"    # Z

    .prologue
    const/high16 v1, 0x4000000

    .line 6664
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 6665
    return-void

    .line 6664
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setLabelFor(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 6509
    iput p1, p0, mLabelForId:I

    .line 6510
    iget v0, p0, mLabelForId:I

    if-eq v0, v1, :cond_11

    iget v0, p0, mID:I

    if-ne v0, v1, :cond_11

    .line 6512
    invoke-static {}, generateViewId()I

    move-result v0

    iput v0, p0, mID:I

    .line 6514
    :cond_11
    return-void
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 14883
    invoke-virtual {p0}, getLayerType()I

    move-result v0

    .line 14884
    .local v0, "layerType":I
    if-eqz v0, :cond_20

    .line 14885
    if-nez p1, :cond_e

    new-instance p1, Landroid/graphics/Paint;

    .end local p1    # "paint":Landroid/graphics/Paint;
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    :cond_e
    iput-object p1, p0, mLayerPaint:Landroid/graphics/Paint;

    .line 14886
    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 14887
    iget-object v1, p0, mRenderNode:Landroid/view/RenderNode;

    iget-object v2, p0, mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 14888
    invoke-virtual {p0, v3, v3}, invalidateViewProperty(ZZ)V

    .line 14894
    :cond_20
    :goto_20
    return-void

    .line 14891
    :cond_21
    invoke-virtual {p0}, invalidate()V

    goto :goto_20
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 8
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x1

    .line 14829
    if-ltz p1, :cond_6

    const/4 v3, 0x2

    if-le p1, v3, :cond_e

    .line 14830
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 14834
    :cond_e
    iget-object v3, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v3, p1}, Landroid/view/RenderNode;->setLayerType(I)Z

    move-result v1

    .line 14836
    .local v1, "typeChanged":Z
    if-nez v1, :cond_1a

    .line 14837
    invoke-virtual {p0, p2}, setLayerPaint(Landroid/graphics/Paint;)V

    .line 14855
    .end local p2    # "paint":Landroid/graphics/Paint;
    :goto_19
    return-void

    .line 14842
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_1a
    iget v3, p0, mLayerType:I

    if-ne v3, v2, :cond_21

    .line 14843
    invoke-virtual {p0}, destroyDrawingCache()V

    .line 14846
    :cond_21
    iput p1, p0, mLayerType:I

    .line 14847
    iget v3, p0, mLayerType:I

    if-nez v3, :cond_3b

    move v0, v2

    .line 14848
    .local v0, "layerDisabled":Z
    :goto_28
    if-eqz v0, :cond_3d

    const/4 p2, 0x0

    .end local p2    # "paint":Landroid/graphics/Paint;
    :cond_2b
    :goto_2b
    iput-object p2, p0, mLayerPaint:Landroid/graphics/Paint;

    .line 14849
    iget-object v3, p0, mRenderNode:Landroid/view/RenderNode;

    iget-object v4, p0, mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    .line 14853
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 14854
    invoke-virtual {p0, v2}, invalidate(Z)V

    goto :goto_19

    .line 14847
    .end local v0    # "layerDisabled":Z
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_3b
    const/4 v0, 0x0

    goto :goto_28

    .line 14848
    .restart local v0    # "layerDisabled":Z
    :cond_3d
    if-nez p2, :cond_2b

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto :goto_2b
.end method

.method public setLayoutDirection(I)V
    .registers 4
    .param p1, "layoutDirection"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7318
    invoke-virtual {p0}, getRawLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_26

    .line 7320
    iget v0, p0, mPrivateFlags2:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, mPrivateFlags2:I

    .line 7321
    invoke-virtual {p0}, resetRtlProperties()V

    .line 7323
    iget v0, p0, mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 7326
    iget-boolean v0, p0, mSkipRtlCheck:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, resolveRtlPropertiesIfNeeded()Z

    .line 7327
    :cond_1f
    invoke-virtual {p0}, requestLayout()V

    .line 7328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 7330
    :cond_26
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 12366
    if-nez p1, :cond_a

    .line 12367
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12369
    :cond_a
    iput-object p1, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 12370
    invoke-virtual {p0}, resolveLayoutParams()V

    .line 12371
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 12372
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12374
    :cond_1c
    invoke-virtual {p0}, requestLayout()V

    .line 12375
    return-void
.end method

.method public final setLeft(I)V
    .registers 13
    .param p1, "left"    # I

    .prologue
    const/high16 v10, 0x10000000

    const/4 v9, 0x1

    .line 11677
    iget v5, p0, mLeft:I

    if-eq p1, v5, :cond_59

    .line 11678
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v1

    .line 11679
    .local v1, "matrixIsIdentity":Z
    if-eqz v1, :cond_5e

    .line 11680
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_26

    .line 11683
    iget v5, p0, mLeft:I

    if-ge p1, v5, :cond_5a

    .line 11684
    move v2, p1

    .line 11685
    .local v2, "minLeft":I
    iget v5, p0, mLeft:I

    sub-int v4, p1, v5

    .line 11690
    .local v4, "xLoc":I
    :goto_1a
    const/4 v5, 0x0

    iget v6, p0, mRight:I

    sub-int/2addr v6, v2

    iget v7, p0, mBottom:I

    iget v8, p0, mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v4, v5, v6, v7}, invalidate(IIII)V

    .line 11697
    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_26
    :goto_26
    iget v5, p0, mRight:I

    iget v6, p0, mLeft:I

    sub-int v3, v5, v6

    .line 11698
    .local v3, "oldWidth":I
    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int v0, v5, v6

    .line 11700
    .local v0, "height":I
    iput p1, p0, mLeft:I

    .line 11701
    iget-object v5, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->setLeft(I)Z

    .line 11703
    iget v5, p0, mRight:I

    iget v6, p0, mLeft:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5, v0, v3, v0}, sizeChange(IIII)V

    .line 11705
    if-nez v1, :cond_4c

    .line 11706
    iget v5, p0, mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, mPrivateFlags:I

    .line 11707
    invoke-virtual {p0, v9}, invalidate(Z)V

    .line 11709
    :cond_4c
    iput-boolean v9, p0, mBackgroundSizeChanged:Z

    .line 11710
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 11711
    iget v5, p0, mPrivateFlags2:I

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_59

    .line 11713
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 11716
    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_59
    return-void

    .line 11687
    .restart local v1    # "matrixIsIdentity":Z
    :cond_5a
    iget v2, p0, mLeft:I

    .line 11688
    .restart local v2    # "minLeft":I
    const/4 v4, 0x0

    .restart local v4    # "xLoc":I
    goto :goto_1a

    .line 11694
    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_5e
    invoke-virtual {p0, v9}, invalidate(Z)V

    goto :goto_26
.end method

.method public setLongClickable(Z)V
    .registers 4
    .param p1, "longClickable"    # Z

    .prologue
    const/high16 v1, 0x200000

    .line 7537
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7538
    return-void

    .line 7537
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final setMeasuredDimension(II)V
    .registers 9
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 18690
    invoke-static {p0}, isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    .line 18691
    .local v1, "optical":Z
    iget-object v4, p0, mParent:Landroid/view/ViewParent;

    invoke-static {v4}, isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v4

    if-eq v1, v4, :cond_22

    .line 18692
    invoke-virtual {p0}, getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 18693
    .local v0, "insets":Landroid/graphics/Insets;
    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int v3, v4, v5

    .line 18694
    .local v3, "opticalWidth":I
    iget v4, v0, Landroid/graphics/Insets;->top:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    add-int v2, v4, v5

    .line 18696
    .local v2, "opticalHeight":I
    if-eqz v1, :cond_26

    .end local v3    # "opticalWidth":I
    :goto_1e
    add-int/2addr p1, v3

    .line 18697
    if-eqz v1, :cond_28

    .end local v2    # "opticalHeight":I
    :goto_21
    add-int/2addr p2, v2

    .line 18699
    .end local v0    # "insets":Landroid/graphics/Insets;
    :cond_22
    invoke-direct {p0, p1, p2}, setMeasuredDimensionRaw(II)V

    .line 18700
    return-void

    .line 18696
    .restart local v0    # "insets":Landroid/graphics/Insets;
    .restart local v2    # "opticalHeight":I
    .restart local v3    # "opticalWidth":I
    :cond_26
    neg-int v3, v3

    goto :goto_1e

    .line 18697
    .end local v3    # "opticalWidth":I
    :cond_28
    neg-int v2, v2

    goto :goto_21
.end method

.method public setMinimumHeight(I)V
    .registers 2
    .param p1, "minHeight"    # I

    .prologue
    .line 18858
    iput p1, p0, mMinHeight:I

    .line 18859
    invoke-virtual {p0}, requestLayout()V

    .line 18860
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2
    .param p1, "minWidth"    # I

    .prologue
    .line 18887
    iput p1, p0, mMinWidth:I

    .line 18888
    invoke-virtual {p0}, requestLayout()V

    .line 18890
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 19730
    if-eqz p1, :cond_9

    .line 19731
    iget v0, p0, mPrivateFlags3:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, mPrivateFlags3:I

    .line 19736
    :goto_8
    return-void

    .line 19733
    :cond_9
    invoke-virtual {p0}, stopNestedScroll()V

    .line 19734
    iget v0, p0, mPrivateFlags3:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, mPrivateFlags3:I

    goto :goto_8
.end method

.method public setNextFocusDownId(I)V
    .registers 2
    .param p1, "nextFocusDownId"    # I

    .prologue
    .line 6748
    iput p1, p0, mNextFocusDownId:I

    .line 6749
    return-void
.end method

.method public setNextFocusForwardId(I)V
    .registers 2
    .param p1, "nextFocusForwardId"    # I

    .prologue
    .line 6769
    iput p1, p0, mNextFocusForwardId:I

    .line 6770
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .registers 2
    .param p1, "nextFocusLeftId"    # I

    .prologue
    .line 6685
    iput p1, p0, mNextFocusLeftId:I

    .line 6686
    return-void
.end method

.method public setNextFocusRightId(I)V
    .registers 2
    .param p1, "nextFocusRightId"    # I

    .prologue
    .line 6706
    iput p1, p0, mNextFocusRightId:I

    .line 6707
    return-void
.end method

.method public setNextFocusUpId(I)V
    .registers 2
    .param p1, "nextFocusUpId"    # I

    .prologue
    .line 6727
    iput p1, p0, mNextFocusUpId:I

    .line 6728
    return-void
.end method

.method public setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 5341
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnAirButtonHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$702(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    .line 5342
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnApplyWindowInsetsListener;

    .prologue
    .line 6957
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 6958
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 5140
    invoke-virtual {p0}, isClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setClickable(Z)V

    .line 5143
    :cond_a
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 5144
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 5178
    invoke-virtual {p0}, isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setLongClickable(Z)V

    .line 5181
    :cond_a
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 5182
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 5352
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$802(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    .line 5353
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 5055
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 5056
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnGenericMotionListener;

    .prologue
    .line 5324
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    .line 5325
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 5332
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    .line 5333
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 5308
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    .line 5309
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 5164
    invoke-virtual {p0}, isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setLongClickable(Z)V

    .line 5167
    :cond_a
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 5168
    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .prologue
    .line 19196
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$1302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 19197
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_1a

    .line 19198
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 19200
    :cond_1a
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 5316
    invoke-virtual {p0}, getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 5317
    return-void
.end method

.method public setOpticalInsets(Landroid/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Insets;

    .prologue
    .line 17738
    iput-object p1, p0, mLayoutInsets:Landroid/graphics/Insets;

    .line 17739
    return-void
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .prologue
    .line 12077
    iput-object p1, p0, mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 12078
    invoke-virtual {p0}, invalidateOutline()V

    .line 12079
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "overScrollMode"    # I

    .prologue
    .line 19708
    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 19711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19713
    :cond_21
    iput p1, p0, mOverScrollMode:I

    .line 19714
    return-void
.end method

.method public setPadding(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v0, -0x80000000

    .line 17480
    invoke-virtual {p0}, resetResolvedPadding()V

    .line 17482
    iput v0, p0, mUserPaddingStart:I

    .line 17483
    iput v0, p0, mUserPaddingEnd:I

    .line 17485
    iput p1, p0, mUserPaddingLeftInitial:I

    .line 17486
    iput p3, p0, mUserPaddingRightInitial:I

    .line 17488
    iput-boolean v1, p0, mLeftPaddingDefined:Z

    .line 17489
    iput-boolean v1, p0, mRightPaddingDefined:Z

    .line 17491
    invoke-virtual {p0, p1, p2, p3, p4}, internalSetPadding(IIII)V

    .line 17492
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    .line 17572
    invoke-virtual {p0}, resetResolvedPadding()V

    .line 17574
    iput p1, p0, mUserPaddingStart:I

    .line 17575
    iput p3, p0, mUserPaddingEnd:I

    .line 17576
    iput-boolean v0, p0, mLeftPaddingDefined:Z

    .line 17577
    iput-boolean v0, p0, mRightPaddingDefined:Z

    .line 17579
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 17587
    iput p1, p0, mUserPaddingLeftInitial:I

    .line 17588
    iput p3, p0, mUserPaddingRightInitial:I

    .line 17589
    invoke-virtual {p0, p1, p2, p3, p4}, internalSetPadding(IIII)V

    .line 17591
    :goto_1a
    return-void

    .line 17581
    :pswitch_1b
    iput p3, p0, mUserPaddingLeftInitial:I

    .line 17582
    iput p1, p0, mUserPaddingRightInitial:I

    .line 17583
    invoke-virtual {p0, p3, p2, p1, p4}, internalSetPadding(IIII)V

    goto :goto_1a

    .line 17579
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

.method public setPivotX(F)V
    .registers 5
    .param p1, "pivotX"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11333
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isPivotExplicitlySet()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, getPivotX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_20

    .line 11334
    :cond_12
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11335
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 11336
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11338
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11340
    :cond_20
    return-void
.end method

.method public setPivotY(F)V
    .registers 5
    .param p1, "pivotY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11374
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isPivotExplicitlySet()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, getPivotY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_20

    .line 11375
    :cond_12
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11376
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 11377
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11379
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11381
    :cond_20
    return-void
.end method

.method public setPressed(Z)V
    .registers 6
    .param p1, "pressed"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7568
    iget v2, p0, mPrivateFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_1e

    move v2, v0

    :goto_b
    if-eq p1, v2, :cond_20

    .line 7570
    .local v0, "needsRefresh":Z
    :goto_d
    if-eqz p1, :cond_22

    .line 7571
    iget v1, p0, mPrivateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, mPrivateFlags:I

    .line 7576
    :goto_15
    if-eqz v0, :cond_1a

    .line 7577
    invoke-virtual {p0}, refreshDrawableState()V

    .line 7579
    :cond_1a
    invoke-virtual {p0, p1}, dispatchSetPressed(Z)V

    .line 7580
    return-void

    .end local v0    # "needsRefresh":Z
    :cond_1e
    move v2, v1

    .line 7568
    goto :goto_b

    :cond_20
    move v0, v1

    goto :goto_d

    .line 7573
    .restart local v0    # "needsRefresh":Z
    :cond_22
    iget v1, p0, mPrivateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, mPrivateFlags:I

    goto :goto_15
.end method

.method public setRevealClip(ZFFF)V
    .registers 7
    .param p1, "shouldClip"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F

    .prologue
    const/4 v1, 0x0

    .line 12142
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/RenderNode;->setRevealClip(ZFFF)Z

    .line 12143
    invoke-virtual {p0, v1, v1}, invalidateViewProperty(ZZ)V

    .line 12144
    return-void
.end method

.method public final setRight(I)V
    .registers 12
    .param p1, "right"    # I

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 11736
    iget v4, p0, mRight:I

    if-eq p1, v4, :cond_59

    .line 11737
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v1

    .line 11738
    .local v1, "matrixIsIdentity":Z
    if-eqz v1, :cond_5c

    .line 11739
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_24

    .line 11741
    iget v4, p0, mRight:I

    if-ge p1, v4, :cond_5a

    .line 11742
    iget v2, p0, mRight:I

    .line 11746
    .local v2, "maxRight":I
    :goto_18
    iget v4, p0, mLeft:I

    sub-int v4, v2, v4

    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v8, v8, v4, v5}, invalidate(IIII)V

    .line 11753
    .end local v2    # "maxRight":I
    :cond_24
    :goto_24
    iget v4, p0, mRight:I

    iget v5, p0, mLeft:I

    sub-int v3, v4, v5

    .line 11754
    .local v3, "oldWidth":I
    iget v4, p0, mBottom:I

    iget v5, p0, mTop:I

    sub-int v0, v4, v5

    .line 11756
    .local v0, "height":I
    iput p1, p0, mRight:I

    .line 11757
    iget-object v4, p0, mRenderNode:Landroid/view/RenderNode;

    iget v5, p0, mRight:I

    invoke-virtual {v4, v5}, Landroid/view/RenderNode;->setRight(I)Z

    .line 11759
    iget v4, p0, mRight:I

    iget v5, p0, mLeft:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v4, v0, v3, v0}, sizeChange(IIII)V

    .line 11761
    if-nez v1, :cond_4c

    .line 11762
    iget v4, p0, mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, mPrivateFlags:I

    .line 11763
    invoke-virtual {p0, v7}, invalidate(Z)V

    .line 11765
    :cond_4c
    iput-boolean v7, p0, mBackgroundSizeChanged:Z

    .line 11766
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 11767
    iget v4, p0, mPrivateFlags2:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_59

    .line 11769
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 11772
    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_59
    return-void

    .line 11744
    .restart local v1    # "matrixIsIdentity":Z
    :cond_5a
    move v2, p1

    .restart local v2    # "maxRight":I
    goto :goto_18

    .line 11750
    .end local v2    # "maxRight":I
    :cond_5c
    invoke-virtual {p0, v7}, invalidate(Z)V

    goto :goto_24
.end method

.method public setRotation(F)V
    .registers 5
    .param p1, "rotation"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11129
    invoke-virtual {p0}, getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    .line 11131
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11132
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotation(F)Z

    .line 11133
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11135
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11136
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 11138
    :cond_1b
    return-void
.end method

.method public setRotationX(F)V
    .registers 5
    .param p1, "rotationX"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11218
    invoke-virtual {p0}, getRotationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    .line 11219
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11220
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotationX(F)Z

    .line 11221
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11223
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11224
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 11226
    :cond_1b
    return-void
.end method

.method public setRotationY(F)V
    .registers 5
    .param p1, "rotationY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11174
    invoke-virtual {p0}, getRotationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    .line 11175
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11176
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotationY(F)Z

    .line 11177
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11179
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11180
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 11182
    :cond_1b
    return-void
.end method

.method public setSaveEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x10000

    .line 7638
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7639
    return-void

    :cond_9
    move v0, v1

    .line 7638
    goto :goto_5
.end method

.method public setSaveFromParentEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x20000000

    .line 7699
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7700
    return-void

    :cond_9
    move v0, v1

    .line 7699
    goto :goto_5
.end method

.method public setScaleX(F)V
    .registers 5
    .param p1, "scaleX"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11254
    invoke-virtual {p0}, getScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    .line 11255
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11256
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setScaleX(F)Z

    .line 11257
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11259
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11260
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 11262
    :cond_1b
    return-void
.end method

.method public setScaleY(F)V
    .registers 5
    .param p1, "scaleY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11290
    invoke-virtual {p0}, getScaleY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    .line 11291
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11292
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setScaleY(F)Z

    .line 11293
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11295
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11296
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 11298
    :cond_1b
    return-void
.end method

.method public setScrollBarDefaultDelayBeforeFade(I)V
    .registers 3
    .param p1, "scrollBarDefaultDelayBeforeFade"    # I

    .prologue
    .line 13491
    invoke-direct {p0}, getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 13492
    return-void
.end method

.method public setScrollBarFadeDuration(I)V
    .registers 3
    .param p1, "scrollBarFadeDuration"    # I

    .prologue
    .line 13515
    invoke-direct {p0}, getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 13516
    return-void
.end method

.method public setScrollBarSize(I)V
    .registers 3
    .param p1, "scrollBarSize"    # I

    .prologue
    .line 13539
    invoke-direct {p0}, getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 13540
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 5
    .param p1, "style"    # I

    .prologue
    const/high16 v2, 0x3000000

    .line 13562
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_18

    .line 13563
    iget v0, p0, mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, mViewFlags:I

    .line 13564
    invoke-virtual {p0}, computeOpaqueFlags()V

    .line 13565
    invoke-virtual {p0}, resolvePadding()V

    .line 13567
    :cond_18
    return-void
.end method

.method public setScrollContainer(Z)V
    .registers 4
    .param p1, "isScrollContainer"    # Z

    .prologue
    const/high16 v1, 0x100000

    .line 6591
    if-eqz p1, :cond_21

    .line 6592
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget v0, p0, mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 6593
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6594
    iget v0, p0, mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 6596
    :cond_19
    iget v0, p0, mPrivateFlags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 6603
    :goto_20
    return-void

    .line 6598
    :cond_21
    iget v0, p0, mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 6599
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6601
    :cond_2d
    iget v0, p0, mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    goto :goto_20
.end method

.method public setScrollX(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 10854
    iget v0, p0, mScrollY:I

    invoke-virtual {p0, p1, v0}, scrollTo(II)V

    .line 10855
    return-void
.end method

.method public setScrollY(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 10864
    iget v0, p0, mScrollX:I

    invoke-virtual {p0, v0, p1}, scrollTo(II)V

    .line 10865
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .registers 4
    .param p1, "fadeScrollbars"    # Z

    .prologue
    .line 13448
    invoke-direct {p0}, initScrollCache()V

    .line 13449
    iget-object v0, p0, mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 13450
    .local v0, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 13451
    if-eqz p1, :cond_d

    .line 13452
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 13456
    :goto_c
    return-void

    .line 13454
    :cond_d
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_c
.end method

.method public setSelected(Z)V
    .registers 6
    .param p1, "selected"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17751
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_27

    move v0, v2

    :goto_9
    if-eq v0, p1, :cond_26

    .line 17752
    iget v0, p0, mPrivateFlags:I

    and-int/lit8 v3, v0, -0x5

    if-eqz p1, :cond_29

    const/4 v0, 0x4

    :goto_12
    or-int/2addr v0, v3

    iput v0, p0, mPrivateFlags:I

    .line 17753
    if-nez p1, :cond_1a

    invoke-direct {p0}, resetPressedState()V

    .line 17754
    :cond_1a
    invoke-virtual {p0, v2}, invalidate(Z)V

    .line 17755
    invoke-virtual {p0}, refreshDrawableState()V

    .line 17756
    invoke-virtual {p0, p1}, dispatchSetSelected(Z)V

    .line 17757
    invoke-virtual {p0, v1}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 17760
    :cond_26
    return-void

    :cond_27
    move v0, v1

    .line 17751
    goto :goto_9

    :cond_29
    move v0, v1

    .line 17752
    goto :goto_12
.end method

.method public setSkipRtlCheck(Z)V
    .registers 2
    .param p1, "skip"    # Z

    .prologue
    .line 17724
    iput-boolean p1, p0, mSkipRtlCheck:Z

    .line 17725
    return-void
.end method

.method public setSmartClipDataExtractionListener(Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    .prologue
    .line 22252
    iput-object p1, p0, mSmartClipDataExtractionListener:Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    .line 22253
    const/4 v0, 0x1

    return v0
.end method

.method public setSoundEffectsEnabled(Z)V
    .registers 4
    .param p1, "soundEffectsEnabled"    # Z

    .prologue
    const/high16 v1, 0x8000000

    .line 7231
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7232
    return-void

    .line 7231
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setStateListAnimator(Landroid/animation/StateListAnimator;)V
    .registers 4
    .param p1, "stateListAnimator"    # Landroid/animation/StateListAnimator;

    .prologue
    .line 11987
    iget-object v0, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    if-ne v0, p1, :cond_5

    .line 12000
    :cond_4
    :goto_4
    return-void

    .line 11990
    :cond_5
    iget-object v0, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    if-eqz v0, :cond_f

    .line 11991
    iget-object v0, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/StateListAnimator;->setTarget(Landroid/view/View;)V

    .line 11993
    :cond_f
    iput-object p1, p0, mStateListAnimator:Landroid/animation/StateListAnimator;

    .line 11994
    if-eqz p1, :cond_4

    .line 11995
    invoke-virtual {p1, p0}, Landroid/animation/StateListAnimator;->setTarget(Landroid/view/View;)V

    .line 11996
    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11997
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/StateListAnimator;->setState([I)V

    goto :goto_4
.end method

.method public setSystemUiVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 19142
    iget v0, p0, mSystemUiVisibility:I

    if-eq p1, v0, :cond_19

    .line 19143
    iput p1, p0, mSystemUiVisibility:I

    .line 19144
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_19

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_19

    .line 19145
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 19148
    :cond_19
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 18350
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    .line 18351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18355
    :cond_d
    invoke-direct {p0, p1, p2}, setKeyedTag(ILjava/lang/Object;)V

    .line 18356
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 18307
    iput-object p1, p0, mTag:Ljava/lang/Object;

    .line 18308
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 18365
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 18366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18370
    :cond_d
    invoke-direct {p0, p1, p2}, setKeyedTag(ILjava/lang/Object;)V

    .line 18371
    return-void
.end method

.method public setTextAlignment(I)V
    .registers 5
    .param p1, "textAlignment"    # I

    .prologue
    .line 20325
    invoke-virtual {p0}, getRawTextAlignment()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 20327
    iget v0, p0, mPrivateFlags2:I

    const v1, -0xe001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 20328
    invoke-virtual {p0}, resetResolvedTextAlignment()V

    .line 20330
    iget v0, p0, mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0xd

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 20333
    invoke-virtual {p0}, resolveTextAlignment()Z

    .line 20335
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, onRtlPropertiesChanged(I)V

    .line 20337
    invoke-virtual {p0}, requestLayout()V

    .line 20338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 20340
    :cond_2d
    return-void
.end method

.method public setTextDirection(I)V
    .registers 4
    .param p1, "textDirection"    # I

    .prologue
    .line 20097
    invoke-virtual {p0}, getRawTextDirection()I

    move-result v0

    if-eq v0, p1, :cond_29

    .line 20099
    iget v0, p0, mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1c1

    iput v0, p0, mPrivateFlags2:I

    .line 20100
    invoke-virtual {p0}, resetResolvedTextDirection()V

    .line 20102
    iget v0, p0, mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x1c0

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags2:I

    .line 20104
    invoke-virtual {p0}, resolveTextDirection()Z

    .line 20106
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, onRtlPropertiesChanged(I)V

    .line 20108
    invoke-virtual {p0}, requestLayout()V

    .line 20109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 20111
    :cond_29
    return-void
.end method

.method public final setTop(I)V
    .registers 12
    .param p1, "top"    # I

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x1

    .line 11553
    iget v5, p0, mTop:I

    if-eq p1, v5, :cond_5b

    .line 11554
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v0

    .line 11555
    .local v0, "matrixIsIdentity":Z
    if-eqz v0, :cond_60

    .line 11556
    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_26

    .line 11559
    iget v5, p0, mTop:I

    if-ge p1, v5, :cond_5c

    .line 11560
    move v1, p1

    .line 11561
    .local v1, "minTop":I
    iget v5, p0, mTop:I

    sub-int v4, p1, v5

    .line 11566
    .local v4, "yLoc":I
    :goto_1a
    const/4 v5, 0x0

    iget v6, p0, mRight:I

    iget v7, p0, mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, mBottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0, v5, v4, v6, v7}, invalidate(IIII)V

    .line 11573
    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_26
    :goto_26
    iget v5, p0, mRight:I

    iget v6, p0, mLeft:I

    sub-int v3, v5, v6

    .line 11574
    .local v3, "width":I
    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int v2, v5, v6

    .line 11576
    .local v2, "oldHeight":I
    iput p1, p0, mTop:I

    .line 11577
    iget-object v5, p0, mRenderNode:Landroid/view/RenderNode;

    iget v6, p0, mTop:I

    invoke-virtual {v5, v6}, Landroid/view/RenderNode;->setTop(I)Z

    .line 11579
    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v5, v3, v2}, sizeChange(IIII)V

    .line 11581
    if-nez v0, :cond_4e

    .line 11582
    iget v5, p0, mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, mPrivateFlags:I

    .line 11583
    invoke-virtual {p0, v8}, invalidate(Z)V

    .line 11585
    :cond_4e
    iput-boolean v8, p0, mBackgroundSizeChanged:Z

    .line 11586
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 11587
    iget v5, p0, mPrivateFlags2:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_5b

    .line 11589
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 11592
    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_5b
    return-void

    .line 11563
    .restart local v0    # "matrixIsIdentity":Z
    :cond_5c
    iget v1, p0, mTop:I

    .line 11564
    .restart local v1    # "minTop":I
    const/4 v4, 0x0

    .restart local v4    # "yLoc":I
    goto :goto_1a

    .line 11570
    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_60
    invoke-virtual {p0, v8}, invalidate(Z)V

    goto :goto_26
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .registers 2
    .param p1, "delegate"    # Landroid/view/TouchDelegate;

    .prologue
    .line 10544
    iput-object p1, p0, mTouchDelegate:Landroid/view/TouchDelegate;

    .line 10545
    return-void
.end method

.method public setTransitionAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .prologue
    .line 11501
    invoke-virtual {p0}, ensureTransformationInfo()V

    .line 11502
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_25

    .line 11503
    iget-object v0, p0, mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    .line 11504
    iget v0, p0, mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 11505
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, invalidateViewProperty(ZZ)V

    .line 11506
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0}, getFinalAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 11508
    :cond_25
    return-void
.end method

.method public final setTransitionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "transitionName"    # Ljava/lang/String;

    .prologue
    .line 20957
    iput-object p1, p0, mTransitionName:Ljava/lang/String;

    .line 20958
    return-void
.end method

.method public setTranslationX(F)V
    .registers 5
    .param p1, "translationX"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11891
    invoke-virtual {p0}, getTranslationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1b

    .line 11892
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11893
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationX(F)Z

    .line 11894
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11896
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11897
    invoke-virtual {p0}, notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 11899
    :cond_1b
    return-void
.end method

.method public setTranslationY(F)V
    .registers 5
    .param p1, "translationY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11925
    invoke-virtual {p0}, getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_18

    .line 11926
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11927
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationY(F)Z

    .line 11928
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11930
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11932
    :cond_18
    return-void
.end method

.method public setTranslationZ(F)V
    .registers 5
    .param p1, "translationZ"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11950
    invoke-virtual {p0}, getTranslationZ()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_18

    .line 11951
    invoke-virtual {p0, v2, v1}, invalidateViewProperty(ZZ)V

    .line 11952
    iget-object v0, p0, mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationZ(F)Z

    .line 11953
    invoke-virtual {p0, v1, v2}, invalidateViewProperty(ZZ)V

    .line 11955
    invoke-virtual {p0}, invalidateParentIfNeededAndWasQuickRejected()V

    .line 11957
    :cond_18
    return-void
.end method

.method public setTwHorizontalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 5027
    iget v0, p0, mTwHorizontalScrollbarPosition:I

    if-eq v0, p1, :cond_c

    .line 5028
    iput p1, p0, mTwHorizontalScrollbarPosition:I

    .line 5029
    invoke-virtual {p0}, computeOpaqueFlags()V

    .line 5030
    invoke-virtual {p0}, resolvePadding()V

    .line 5032
    :cond_c
    return-void
.end method

.method public setUseGestureDetectorExtension(Z)V
    .registers 3
    .param p1, "enableflag"    # Z

    .prologue
    .line 22764
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 22766
    .local v0, "viewroot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 22767
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setUseGestureDetectorEx(Z)V

    .line 22771
    :cond_9
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .registers 3
    .param p1, "verticalFadingEdgeEnabled"    # Z

    .prologue
    .line 13306
    invoke-virtual {p0}, isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 13307
    if-eqz p1, :cond_b

    .line 13308
    invoke-direct {p0}, initScrollCache()V

    .line 13311
    :cond_b
    iget v0, p0, mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, mViewFlags:I

    .line 13313
    :cond_11
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .registers 3
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 13426
    invoke-virtual {p0}, isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 13427
    iget v0, p0, mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, mViewFlags:I

    .line 13428
    invoke-virtual {p0}, computeOpaqueFlags()V

    .line 13429
    invoke-virtual {p0}, resolvePadding()V

    .line 13431
    :cond_12
    return-void
.end method

.method public setVerticalScrollBarPadding(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 13900
    iput-boolean p1, p0, mNeededToChangedScrollBarPosition:Z

    .line 13901
    return-void
.end method

.method public setVerticalScrollBarPaddingPosition(I)V
    .registers 2
    .param p1, "paddingValue"    # I

    .prologue
    .line 13913
    iput p1, p0, mScrollBarPositionPadding:I

    .line 13914
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 5008
    iget v0, p0, mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_c

    .line 5009
    iput p1, p0, mVerticalScrollbarPosition:I

    .line 5010
    invoke-virtual {p0}, computeOpaqueFlags()V

    .line 5011
    invoke-virtual {p0}, resolvePadding()V

    .line 5013
    :cond_c
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 7136
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, setFlags(II)V

    .line 7137
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 7138
    :cond_12
    return-void

    :cond_13
    move v0, v1

    .line 7137
    goto :goto_f
.end method

.method public setWillNotCacheDrawing(Z)V
    .registers 4
    .param p1, "willNotCacheDrawing"    # Z

    .prologue
    const/high16 v1, 0x20000

    .line 7473
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7474
    return-void

    .line 7473
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setWillNotDraw(Z)V
    .registers 4
    .param p1, "willNotDraw"    # Z

    .prologue
    const/16 v1, 0x80

    .line 7450
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setFlags(II)V

    .line 7451
    return-void

    .line 7450
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setWritingBuddy(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .registers 9
    .param p1, "wb"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9739
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "car_mode_on"

    const/4 v5, -0x3

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1a

    move v0, v1

    .line 9740
    .local v0, "isCarModeOn":Z
    :goto_13
    if-nez p1, :cond_1c

    .line 9741
    iput-boolean v2, p0, mIsWritingBuddyEnabled:Z

    .line 9742
    iput-object v6, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 9755
    :goto_19
    return-void

    .end local v0    # "isCarModeOn":Z
    :cond_1a
    move v0, v2

    .line 9739
    goto :goto_13

    .line 9743
    .restart local v0    # "isCarModeOn":Z
    :cond_1c
    if-eqz v0, :cond_23

    .line 9744
    iput-boolean v2, p0, mIsWritingBuddyEnabled:Z

    .line 9745
    iput-object v6, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    goto :goto_19

    .line 9748
    :cond_23
    iget-object v2, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    if-eqz v2, :cond_34

    iget-object v2, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 9749
    iget-object v2, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {v2, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setParentView(Landroid/view/View;)V

    .line 9752
    :cond_34
    iput-boolean v1, p0, mIsWritingBuddyEnabled:Z

    .line 9753
    iput-object p1, p0, mWritingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    goto :goto_19
.end method

.method public setWritingBuddyEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 9723
    iput-boolean p1, p0, mIsWritingBuddyEnabled:Z

    .line 9724
    return-void
.end method

.method public setX(F)V
    .registers 3
    .param p1, "x"    # F

    .prologue
    .line 11794
    iget v0, p0, mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, setTranslationX(F)V

    .line 11795
    return-void
.end method

.method public setXmlFilePath(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/CharSequence;

    .prologue
    .line 4727
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_6

    .line 4728
    iput-object p1, p0, mXmlFilePath:Ljava/lang/CharSequence;

    .line 4730
    :cond_6
    return-void
.end method

.method public setY(F)V
    .registers 3
    .param p1, "y"    # F

    .prologue
    .line 11817
    iget v0, p0, mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, setTranslationY(F)V

    .line 11818
    return-void
.end method

.method public setZ(F)V
    .registers 3
    .param p1, "z"    # F

    .prologue
    .line 11840
    invoke-virtual {p0}, getElevation()F

    move-result v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, setTranslationZ(F)V

    .line 11841
    return-void
.end method

.method public showContextMenu()Z
    .registers 2

    .prologue
    .line 5270
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 5284
    invoke-virtual {p0}, showContextMenu()Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 5296
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5297
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 5298
    :goto_7
    return-object v1

    :cond_8
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_7
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 18908
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 18909
    invoke-virtual {p0, p1}, setAnimation(Landroid/view/animation/Animation;)V

    .line 18910
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 18911
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 18912
    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 28
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 19394
    const/16 v19, 0x0

    .line 19396
    .local v19, "okay":Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 19397
    .local v21, "shadowSize":Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 19398
    .local v22, "shadowTouchPoint":Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 19400
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_35

    .line 19402
    :cond_2d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 19409
    :cond_35
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 19411
    .local v8, "surface":Landroid/view/Surface;
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 19415
    .local v11, "token":Landroid/os/IBinder;
    if-eqz v11, :cond_a6

    .line 19416
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5a} :catch_ae

    move-result-object v17

    .line 19418
    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_5c
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 19419
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_a7

    .line 19421
    :try_start_6a
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 19424
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 19427
    .local v20, "root":Landroid/view/ViewRootImpl;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 19430
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 19432
    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 19439
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 19446
    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "root":Landroid/view/ViewRootImpl;
    :cond_a6
    :goto_a6
    return v19

    .line 19421
    .restart local v11    # "token":Landroid/os/IBinder;
    .restart local v17    # "canvas":Landroid/graphics/Canvas;
    :catchall_a7
    move-exception v3

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_ae} :catch_ae

    .line 19441
    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    :catch_ae
    move-exception v18

    .line 19442
    .local v18, "e":Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19443
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_a6
.end method

.method public startNestedScroll(I)Z
    .registers 9
    .param p1, "axes"    # I

    .prologue
    const/4 v3, 0x1

    .line 19793
    invoke-virtual {p0}, hasNestedScrollingParent()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 19818
    :goto_7
    return v3

    .line 19797
    :cond_8
    invoke-virtual {p0}, isNestedScrollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 19798
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 19799
    .local v2, "p":Landroid/view/ViewParent;
    move-object v0, p0

    .line 19800
    .local v0, "child":Landroid/view/View;
    :goto_13
    if-eqz v2, :cond_53

    .line 19802
    :try_start_15
    invoke-interface {v2, v0, p0, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 19803
    iput-object v2, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    .line 19804
    invoke-interface {v2, v0, p0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_20
    .catch Ljava/lang/AbstractMethodError; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_7

    .line 19807
    :catch_21
    move-exception v1

    .line 19808
    .local v1, "e":Ljava/lang/AbstractMethodError;
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewParent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not implement interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "method onStartNestedScroll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19812
    .end local v1    # "e":Ljava/lang/AbstractMethodError;
    :cond_47
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_4e

    move-object v0, v2

    .line 19813
    check-cast v0, Landroid/view/View;

    .line 19815
    :cond_4e
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_13

    .line 19818
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "p":Landroid/view/ViewParent;
    :cond_53
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 19829
    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    .line 19830
    iget-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V

    .line 19831
    const/4 v0, 0x0

    iput-object v0, p0, mNestedScrollingParent:Landroid/view/ViewParent;

    .line 19833
    :cond_c
    return-void
.end method

.method protected syncImageFilterClipRects()V
    .registers 3

    .prologue
    .line 4581
    const-string v0, "HWUI_IMAGE_FILTER"

    const-string v1, "Should set SEC_PRODUCT_FEATURE_COMMON_SUPPORT_HWUI_IMAGE_FILTER to true in SecProductFeature_COMMON ."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    return-void
.end method

.method public toGlobalMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 17878
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 17879
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_6

    .line 17880
    const/4 v2, 0x0

    .line 17887
    :goto_5
    return v2

    .line 17883
    :cond_6
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 17884
    .local v1, "m":Landroid/graphics/Matrix;
    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 17885
    invoke-virtual {p0, v1}, transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 17886
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 17887
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public toLocalMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 17899
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 17900
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_6

    .line 17901
    const/4 v2, 0x0

    .line 17908
    :goto_5
    return v2

    .line 17904
    :cond_6
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 17905
    .local v1, "m":Landroid/graphics/Matrix;
    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 17906
    invoke-virtual {p0, v1}, transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 17907
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 17908
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v7, 0x46

    const/16 v9, 0x44

    const/16 v12, 0x2c

    const/16 v11, 0x20

    const/16 v8, 0x2e

    .line 4648
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4649
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4650
    const/16 v6, 0x7b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4651
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4652
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4653
    iget v6, p0, mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    sparse-switch v6, :sswitch_data_1ae

    .line 4657
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4659
    :goto_39
    iget v6, p0, mViewFlags:I

    and-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    if-ne v6, v10, :cond_16d

    move v6, v7

    :goto_41
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4660
    iget v6, p0, mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_170

    const/16 v6, 0x45

    :goto_4c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4661
    iget v6, p0, mViewFlags:I

    and-int/lit16 v6, v6, 0x80

    const/16 v10, 0x80

    if-ne v6, v10, :cond_173

    move v6, v8

    :goto_58
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4662
    iget v6, p0, mViewFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_176

    const/16 v6, 0x48

    :goto_63
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4663
    iget v6, p0, mViewFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_179

    const/16 v6, 0x56

    :goto_6e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4664
    iget v6, p0, mViewFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_17c

    const/16 v6, 0x43

    :goto_79
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4665
    iget v6, p0, mViewFlags:I

    const/high16 v10, 0x200000

    and-int/2addr v6, v10

    if-eqz v6, :cond_17f

    const/16 v6, 0x4c

    :goto_85
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4666
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4667
    iget v6, p0, mPrivateFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_182

    const/16 v6, 0x52

    :goto_93
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4668
    iget v6, p0, mPrivateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_185

    :goto_9c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4669
    iget v6, p0, mPrivateFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_188

    const/16 v6, 0x53

    :goto_a7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4670
    iget v6, p0, mPrivateFlags:I

    const/high16 v7, 0x2000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_18b

    .line 4671
    const/16 v6, 0x70

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4675
    :goto_b6
    iget v6, p0, mPrivateFlags:I

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_19a

    const/16 v6, 0x48

    :goto_bf
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4676
    iget v6, p0, mPrivateFlags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_19d

    const/16 v6, 0x41

    :goto_cb
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4677
    iget v6, p0, mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1a0

    const/16 v6, 0x49

    :goto_d7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4678
    iget v6, p0, mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1a3

    :goto_e1
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4679
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4680
    iget v6, p0, mLeft:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4681
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4682
    iget v6, p0, mTop:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4683
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4684
    iget v6, p0, mRight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4685
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4686
    iget v6, p0, mBottom:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4687
    invoke-virtual {p0}, getId()I

    move-result v1

    .line 4688
    .local v1, "id":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_14d

    .line 4689
    const-string v6, " #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4690
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4691
    iget-object v4, p0, mResources:Landroid/content/res/Resources;

    .line 4692
    .local v4, "r":Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v6

    if-eqz v6, :cond_14d

    if-eqz v4, :cond_14d

    .line 4695
    const/high16 v6, -0x1000000

    and-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_1bc

    .line 4703
    :try_start_129
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 4706
    .local v3, "pkgname":Ljava/lang/String;
    :goto_12d
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 4707
    .local v5, "typename":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 4708
    .local v0, "entryname":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4709
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4710
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4711
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4712
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4713
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_129 .. :try_end_14d} :catch_1ac

    .line 4718
    .end local v0    # "entryname":Ljava/lang/String;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "typename":Ljava/lang/String;
    :cond_14d
    :goto_14d
    const-string/jumbo v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4719
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 4654
    .end local v1    # "id":I
    :sswitch_158
    const/16 v6, 0x56

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 4655
    :sswitch_15f
    const/16 v6, 0x49

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 4656
    :sswitch_166
    const/16 v6, 0x47

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :cond_16d
    move v6, v8

    .line 4659
    goto/16 :goto_41

    :cond_170
    move v6, v8

    .line 4660
    goto/16 :goto_4c

    :cond_173
    move v6, v9

    .line 4661
    goto/16 :goto_58

    :cond_176
    move v6, v8

    .line 4662
    goto/16 :goto_63

    :cond_179
    move v6, v8

    .line 4663
    goto/16 :goto_6e

    :cond_17c
    move v6, v8

    .line 4664
    goto/16 :goto_79

    :cond_17f
    move v6, v8

    .line 4665
    goto/16 :goto_85

    :cond_182
    move v6, v8

    .line 4667
    goto/16 :goto_93

    :cond_185
    move v7, v8

    .line 4668
    goto/16 :goto_9c

    :cond_188
    move v6, v8

    .line 4669
    goto/16 :goto_a7

    .line 4673
    :cond_18b
    iget v6, p0, mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_198

    const/16 v6, 0x50

    :goto_193
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b6

    :cond_198
    move v6, v8

    goto :goto_193

    :cond_19a
    move v6, v8

    .line 4675
    goto/16 :goto_bf

    :cond_19d
    move v6, v8

    .line 4676
    goto/16 :goto_cb

    :cond_1a0
    move v6, v8

    .line 4677
    goto/16 :goto_d7

    :cond_1a3
    move v9, v8

    .line 4678
    goto/16 :goto_e1

    .line 4697
    .restart local v1    # "id":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    :sswitch_1a6
    :try_start_1a6
    const-string v3, "app"

    .line 4698
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_12d

    .line 4700
    .end local v3    # "pkgname":Ljava/lang/String;
    :sswitch_1a9
    const-string v3, "android"
    :try_end_1ab
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a6 .. :try_end_1ab} :catch_1ac

    .line 4701
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_12d

    .line 4714
    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_1ac
    move-exception v6

    goto :goto_14d

    .line 4653
    :sswitch_data_1ae
    .sparse-switch
        0x0 -> :sswitch_158
        0x4 -> :sswitch_15f
        0x8 -> :sswitch_166
    .end sparse-switch

    .line 4695
    :sswitch_data_1bc
    .sparse-switch
        0x1000000 -> :sswitch_1a9
        0x7f000000 -> :sswitch_1a6
    .end sparse-switch
.end method

.method public transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .registers 7
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 17919
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    .line 17920
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2e

    move-object v1, v0

    .line 17921
    check-cast v1, Landroid/view/View;

    .line 17922
    .local v1, "vp":Landroid/view/View;
    invoke-virtual {v1, p1}, transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 17923
    iget v3, v1, mScrollX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v1, mScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 17930
    .end local v1    # "vp":Landroid/view/View;
    :cond_17
    :goto_17
    iget v3, p0, mLeft:I

    int-to-float v3, v3

    iget v4, p0, mTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 17932
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 17933
    invoke-virtual {p0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 17935
    :cond_2d
    return-void

    .line 17924
    :cond_2e
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_17

    move-object v2, v0

    .line 17925
    check-cast v2, Landroid/view/ViewRootImpl;

    .line 17926
    .local v2, "vr":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 17927
    const/4 v3, 0x0

    iget v4, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_17
.end method

.method public transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .registers 7
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 17945
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    .line 17946
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2e

    move-object v1, v0

    .line 17947
    check-cast v1, Landroid/view/View;

    .line 17948
    .local v1, "vp":Landroid/view/View;
    invoke-virtual {v1, p1}, transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 17949
    iget v3, v1, mScrollX:I

    int-to-float v3, v3

    iget v4, v1, mScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 17956
    .end local v1    # "vp":Landroid/view/View;
    :cond_15
    :goto_15
    iget v3, p0, mLeft:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, mTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 17958
    invoke-virtual {p0}, hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 17959
    invoke-virtual {p0}, getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 17961
    :cond_2d
    return-void

    .line 17950
    :cond_2e
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_15

    move-object v2, v0

    .line 17951
    check-cast v2, Landroid/view/ViewRootImpl;

    .line 17952
    .local v2, "vr":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 17953
    const/4 v3, 0x0

    iget v4, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_15
.end method

.method transformRect(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 12820
    invoke-virtual {p0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 12821
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 12822
    .local v0, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 12823
    invoke-virtual {p0}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 12824
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 12829
    .end local v0    # "boundingRect":Landroid/graphics/RectF;
    :cond_3b
    return-void
.end method

.method protected twEnableHorizontalScrollbar()V
    .registers 2

    .prologue
    .line 4644
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, -0x301

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mViewFlags:I

    .line 4645
    return-void
.end method

.method public twGetContextMenuZOrderToTop()Z
    .registers 2

    .prologue
    .line 22617
    iget-boolean v0, p0, mIsSetContextMenuZOrderToTop:Z

    return v0
.end method

.method public twSetContextMenuZOrderToTop(Z)V
    .registers 2
    .param p1, "isTop"    # Z

    .prologue
    .line 22610
    iput-boolean p1, p0, mIsSetContextMenuZOrderToTop:Z

    .line 22611
    return-void
.end method

.method unFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 5549
    invoke-virtual {p0, p1, v0, v0}, clearFocusInternal(Landroid/view/View;ZZ)V

    .line 5550
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 16914
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 16915
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 16918
    :cond_11
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 16895
    invoke-virtual {p0, p1}, verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 16896
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_16

    .line 16897
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 16900
    :cond_16
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16902
    :cond_1d
    return-void
.end method

.method updateLocalSystemUiVisibility(II)Z
    .registers 6
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .prologue
    .line 19215
    iget v1, p0, mSystemUiVisibility:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int v0, v1, v2

    .line 19216
    .local v0, "val":I
    iget v1, p0, mSystemUiVisibility:I

    if-eq v0, v1, :cond_12

    .line 19217
    invoke-virtual {p0, v0}, setSystemUiVisibility(I)V

    .line 19218
    const/4 v1, 0x1

    .line 19220
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 16997
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public willNotCacheDrawing()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x20000

    .line 7483
    iget v0, p0, mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willNotDraw()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7460
    iget v0, p0, mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
