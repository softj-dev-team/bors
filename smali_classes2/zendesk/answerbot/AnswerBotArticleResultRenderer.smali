.class Lzendesk/answerbot/AnswerBotArticleResultRenderer;
.super Ljava/lang/Object;
.source "AnswerBotArticleResultRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/answerbot/AnswerBotArticleResultRenderer$BottomSheetCallback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c


# instance fields
.field private final bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroidx/cardview/widget/CardView;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultBtnTextColor:I

.field private final defaultBtnTint:Landroid/content/res/ColorStateList;

.field private final negativeResolutionBtn:Lcom/google/android/material/button/MaterialButton;

.field private final positiveResolutionBtn:Lcom/google/android/material/button/MaterialButton;

.field private final pressedBtnTextColor:I

.field private final pressedBtnTint:Landroid/content/res/ColorStateList;

.field private final questionLabel:Landroid/widget/TextView;

.field private final resolutionButtonParent:Landroid/view/ViewGroup;

.field private final timerFactory:Lzendesk/messaging/components/Timer$Factory;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/view/ViewGroup;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lzendesk/answerbot/AnswerBotArticleResultRenderer$BottomSheetCallback;Lzendesk/messaging/components/Timer$Factory;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/ViewGroup;",
            "Lcom/google/android/material/button/MaterialButton;",
            "Lcom/google/android/material/button/MaterialButton;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroidx/cardview/widget/CardView;",
            ">;",
            "Lzendesk/answerbot/AnswerBotArticleResultRenderer$BottomSheetCallback;",
            "Lzendesk/messaging/components/Timer$Factory;",
            "Landroid/content/res/ColorStateList;",
            "Landroid/content/res/ColorStateList;",
            "II)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->questionLabel:Landroid/widget/TextView;

    .line 85
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->resolutionButtonParent:Landroid/view/ViewGroup;

    .line 86
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->positiveResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    .line 87
    iput-object p4, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->negativeResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    .line 88
    iput-object p7, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 89
    iput-object p9, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    .line 90
    iput-object p10, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->defaultBtnTint:Landroid/content/res/ColorStateList;

    .line 91
    iput-object p11, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->pressedBtnTint:Landroid/content/res/ColorStateList;

    .line 92
    iput p12, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->defaultBtnTextColor:I

    .line 93
    iput p13, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->pressedBtnTextColor:I

    .line 95
    invoke-virtual {p7, p8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 96
    invoke-virtual {p3, p5}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p4, p6}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 21
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->defaultBtnTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 21
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->positiveResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)I
    .locals 0

    .line 21
    iget p0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->defaultBtnTextColor:I

    return p0
.end method

.method static synthetic access$300(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 21
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->negativeResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->questionLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Landroid/view/ViewGroup;
    .locals 0

    .line 21
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->resolutionButtonParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 21
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static install(Lzendesk/answerbot/AnswerBotArticleActivity;Lzendesk/messaging/components/Timer$Factory;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lzendesk/answerbot/AnswerBotArticleResultRenderer;
    .locals 17

    move-object/from16 v0, p0

    .line 30
    sget v1, Lzendesk/answerbot/R$id;->zab_view_resolution:I

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 31
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    .line 32
    sget v3, Lzendesk/answerbot/R$id;->zui_container_web_view:I

    invoke-virtual {v0, v3}, Lzendesk/answerbot/AnswerBotArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    new-instance v11, Lzendesk/answerbot/AnswerBotArticleResultRenderer$BottomSheetCallback;

    invoke-direct {v11, v2, v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer$BottomSheetCallback;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/ViewGroup;)V

    .line 34
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    sget v2, Lzendesk/answerbot/R$attr;->colorPrimary:I

    sget v3, Lzendesk/answerbot/R$color;->zui_color_primary:I

    invoke-static {v2, v0, v3}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v15

    .line 42
    new-instance v2, Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    sget v3, Lzendesk/answerbot/R$id;->zab_label_question:I

    .line 43
    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    sget v3, Lzendesk/answerbot/R$id;->button_parent:I

    .line 44
    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    sget v3, Lzendesk/answerbot/R$id;->zab_btn_resolution_positive:I

    .line 45
    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    sget v3, Lzendesk/answerbot/R$id;->zab_btn_resolution_negative:I

    .line 46
    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 49
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v10

    sget v1, Lzendesk/answerbot/R$color;->zui_color_white_100:I

    .line 52
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 53
    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    sget v1, Lzendesk/answerbot/R$color;->zui_text_color_light_primary:I

    .line 55
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v16

    move-object v3, v2

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p1

    invoke-direct/range {v3 .. v16}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;-><init>(Landroid/widget/TextView;Landroid/view/ViewGroup;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lzendesk/answerbot/AnswerBotArticleResultRenderer$BottomSheetCallback;Lzendesk/messaging/components/Timer$Factory;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;II)V

    return-object v2
.end method


# virtual methods
.method render(Lzendesk/answerbot/AnswerBotArticleResult;)V
    .locals 4

    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 103
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->questionLabel:Landroid/widget/TextView;

    sget v0, Lzendesk/answerbot/R$string;->zab_view_article_help_question:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 107
    :cond_0
    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResultRenderer$3;->$SwitchMap$zendesk$answerbot$AnswerBotArticleResult:[I

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleResult;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    const/16 v3, 0x12c

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->negativeResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->pressedBtnTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 151
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->negativeResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    iget v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->pressedBtnTextColor:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->positiveResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->pressedBtnTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->positiveResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    iget v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->pressedBtnTextColor:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 156
    :goto_0
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    new-instance v0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$2;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer$2;-><init>(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)V

    invoke-virtual {p1, v0, v3}, Lzendesk/messaging/components/Timer$Factory;->create(Ljava/lang/Runnable;I)Lzendesk/messaging/components/Timer;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lzendesk/messaging/components/Timer;->start()Z

    return-void

    .line 114
    :cond_3
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->negativeResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->pressedBtnTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->negativeResolutionBtn:Lcom/google/android/material/button/MaterialButton;

    iget v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->pressedBtnTextColor:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 117
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    new-instance v0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;-><init>(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)V

    invoke-virtual {p1, v0, v3}, Lzendesk/messaging/components/Timer$Factory;->create(Ljava/lang/Runnable;I)Lzendesk/messaging/components/Timer;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lzendesk/messaging/components/Timer;->start()Z

    return-void

    .line 109
    :cond_4
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 110
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->questionLabel:Landroid/widget/TextView;

    sget v0, Lzendesk/answerbot/R$string;->zab_view_article_help_question:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
