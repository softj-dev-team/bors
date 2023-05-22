.class public Lzendesk/messaging/ui/InputBox;
.super Landroid/widget/FrameLayout;
.source "InputBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/InputBox$InputTextConsumer;
    }
.end annotation


# instance fields
.field private attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

.field private attachmentsIndicatorClickListener:Landroid/view/View$OnClickListener;

.field private inputBox:Landroid/widget/FrameLayout;

.field private inputTextConsumer:Lzendesk/messaging/ui/InputBox$InputTextConsumer;

.field private inputTextField:Landroid/widget/EditText;

.field private inputTextWatcher:Landroid/text/TextWatcher;

.field private sendButton:Landroid/widget/ImageView;

.field private final sendButtonClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/messaging/ui/InputBox;->sendButtonClickListeners:Ljava/util/List;

    .line 67
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/InputBox;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/messaging/ui/InputBox;->sendButtonClickListeners:Ljava/util/List;

    .line 72
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/InputBox;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/messaging/ui/InputBox;->sendButtonClickListeners:Ljava/util/List;

    .line 77
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/InputBox;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/messaging/ui/InputBox;->sendButtonClickListeners:Ljava/util/List;

    .line 83
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/InputBox;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lzendesk/messaging/ui/AttachmentsIndicator;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/messaging/ui/InputBox;->sendButtonClickListeners:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    .line 90
    iput-object p3, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    .line 91
    iput-object p4, p0, Lzendesk/messaging/ui/InputBox;->sendButton:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lzendesk/messaging/ui/InputBox;)Landroid/widget/EditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/messaging/ui/InputBox;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicatorClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/messaging/ui/InputBox;)Lzendesk/messaging/ui/InputBox$InputTextConsumer;
    .locals 0

    .line 37
    iget-object p0, p0, Lzendesk/messaging/ui/InputBox;->inputTextConsumer:Lzendesk/messaging/ui/InputBox$InputTextConsumer;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/messaging/ui/InputBox;)Lzendesk/messaging/ui/AttachmentsIndicator;
    .locals 0

    .line 37
    iget-object p0, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/messaging/ui/InputBox;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lzendesk/messaging/ui/InputBox;->sendButtonClickListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/messaging/ui/InputBox;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/InputBox;->updateSendBtn(Z)V

    return-void
.end method

.method static synthetic access$600(Lzendesk/messaging/ui/InputBox;)Landroid/text/TextWatcher;
    .locals 0

    .line 37
    iget-object p0, p0, Lzendesk/messaging/ui/InputBox;->inputTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$700(Lzendesk/messaging/ui/InputBox;)Landroid/widget/FrameLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lzendesk/messaging/ui/InputBox;->inputBox:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private bindViews()V
    .locals 1

    .line 193
    sget v0, Lzendesk/messaging/R$id;->zui_view_input_box:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/InputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputBox:Landroid/widget/FrameLayout;

    .line 194
    sget v0, Lzendesk/messaging/R$id;->input_box_input_text:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/InputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    .line 195
    sget v0, Lzendesk/messaging/R$id;->input_box_attachments_indicator:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/InputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/AttachmentsIndicator;

    iput-object v0, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    .line 196
    sget v0, Lzendesk/messaging/R$id;->input_box_send_btn:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/InputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/messaging/ui/InputBox;->sendButton:Landroid/widget/ImageView;

    return-void
.end method

.method private initListeners()V
    .locals 2

    .line 200
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputBox:Landroid/widget/FrameLayout;

    new-instance v1, Lzendesk/messaging/ui/InputBox$1;

    invoke-direct {v1, p0}, Lzendesk/messaging/ui/InputBox$1;-><init>(Lzendesk/messaging/ui/InputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    new-instance v1, Lzendesk/messaging/ui/InputBox$2;

    invoke-direct {v1, p0}, Lzendesk/messaging/ui/InputBox$2;-><init>(Lzendesk/messaging/ui/InputBox;)V

    invoke-virtual {v0, v1}, Lzendesk/messaging/ui/AttachmentsIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->sendButton:Landroid/widget/ImageView;

    new-instance v1, Lzendesk/messaging/ui/InputBox$3;

    invoke-direct {v1, p0}, Lzendesk/messaging/ui/InputBox$3;-><init>(Lzendesk/messaging/ui/InputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    new-instance v1, Lzendesk/messaging/ui/InputBox$4;

    invoke-direct {v1, p0}, Lzendesk/messaging/ui/InputBox$4;-><init>(Lzendesk/messaging/ui/InputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    new-instance v1, Lzendesk/messaging/ui/InputBox$5;

    invoke-direct {v1, p0}, Lzendesk/messaging/ui/InputBox$5;-><init>(Lzendesk/messaging/ui/InputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private showAttachmentsIndicator(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lzendesk/messaging/ui/AttachmentsIndicator;->setEnabled(Z)V

    .line 260
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    invoke-virtual {p1, v0}, Lzendesk/messaging/ui/AttachmentsIndicator;->setVisibility(I)V

    .line 261
    invoke-direct {p0, v1}, Lzendesk/messaging/ui/InputBox;->updateInputFieldPosition(Z)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    invoke-virtual {p1, v0}, Lzendesk/messaging/ui/AttachmentsIndicator;->setEnabled(Z)V

    .line 264
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lzendesk/messaging/ui/AttachmentsIndicator;->setVisibility(I)V

    .line 265
    invoke-direct {p0, v0}, Lzendesk/messaging/ui/InputBox;->updateInputFieldPosition(Z)V

    :goto_0
    return-void
.end method

.method private updateInputFieldPosition(Z)V
    .locals 3

    .line 270
    invoke-virtual {p0}, Lzendesk/messaging/ui/InputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    sget v1, Lzendesk/messaging/R$dimen;->zui_input_box_expanded_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 272
    sget v2, Lzendesk/messaging/R$dimen;->zui_input_box_collapsed_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 273
    iget-object v2, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    move v1, v0

    .line 277
    :cond_0
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 278
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSendBtn(Z)V
    .locals 3

    .line 282
    invoke-virtual {p0}, Lzendesk/messaging/ui/InputBox;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 284
    sget v1, Lzendesk/messaging/R$attr;->colorPrimary:I

    sget v2, Lzendesk/messaging/R$color;->zui_color_primary:I

    invoke-static {v1, v0, v2}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 285
    :cond_0
    sget v1, Lzendesk/messaging/R$color;->zui_color_disabled:I

    invoke-static {v1, v0}, Lzendesk/commonui/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result v0

    .line 287
    :goto_0
    iget-object v1, p0, Lzendesk/messaging/ui/InputBox;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 288
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lzendesk/messaging/ui/InputBox;->sendButton:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lzendesk/commonui/UiUtils;->setTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method private viewInit(Landroid/content/Context;)V
    .locals 1

    .line 180
    sget v0, Lzendesk/messaging/R$layout;->zui_view_input_box:I

    invoke-static {p1, v0, p0}, Lzendesk/messaging/ui/InputBox;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 182
    invoke-virtual {p0}, Lzendesk/messaging/ui/InputBox;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lzendesk/messaging/ui/InputBox;->bindViews()V

    .line 187
    invoke-direct {p0}, Lzendesk/messaging/ui/InputBox;->initListeners()V

    const/4 p1, 0x0

    .line 188
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/InputBox;->showAttachmentsIndicator(Z)V

    .line 189
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/InputBox;->updateSendBtn(Z)V

    return-void
.end method


# virtual methods
.method public addSendButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->sendButtonClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 96
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Lzendesk/messaging/ui/InputBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 109
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1
.end method

.method public setAttachmentsCount(I)V
    .locals 3

    .line 160
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    invoke-virtual {v0, p1}, Lzendesk/messaging/ui/AttachmentsIndicator;->setAttachmentsCount(I)V

    .line 161
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result p1

    .line 162
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    invoke-virtual {v0}, Lzendesk/messaging/ui/AttachmentsIndicator;->getAttachmentsCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 163
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lzendesk/messaging/ui/InputBox;->updateSendBtn(Z)V

    return-void
.end method

.method public setAttachmentsIndicatorClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicatorClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 136
    :goto_0
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/InputBox;->showAttachmentsIndicator(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 117
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 119
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->sendButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v3, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 121
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->attachmentsIndicator:Lzendesk/messaging/ui/AttachmentsIndicator;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x3e4ccccd    # 0.2f

    :goto_1
    invoke-virtual {v0, v1}, Lzendesk/messaging/ui/AttachmentsIndicator;->setAlpha(F)V

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputTextConsumer(Lzendesk/messaging/ui/InputBox$InputTextConsumer;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lzendesk/messaging/ui/InputBox;->inputTextConsumer:Lzendesk/messaging/ui/InputBox$InputTextConsumer;

    return-void
.end method

.method public setInputTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lzendesk/messaging/ui/InputBox;->inputTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public setInputType(Ljava/lang/Integer;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method
