.class Lzendesk/support/request/ViewMessageComposer;
.super Landroid/widget/FrameLayout;
.source "ViewMessageComposer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;,
        Lzendesk/support/request/ViewMessageComposer$MessageComposerState;,
        Lzendesk/support/request/ViewMessageComposer$InputListener;,
        Lzendesk/support/request/ViewMessageComposer$OnHeightChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViewMessageComposer"


# instance fields
.field private attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

.field private attachmentsOffCollapseAnimatorSet:Landroid/animation/AnimatorSet;

.field private attachmentsOffExpandAnimatorSet:Landroid/animation/AnimatorSet;

.field private attachmentsOnCollapseAnimatorSet:Landroid/animation/AnimatorSet;

.field private attachmentsOnExpandAnimatorSet:Landroid/animation/AnimatorSet;

.field private imageStream:Lzendesk/belvedere/ImageStream;

.field private inputListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/ViewMessageComposer$InputListener;",
            ">;"
        }
    .end annotation
.end field

.field private inputTextField:Landroid/widget/EditText;

.field private isAttachmentsButtonDisabled:Z

.field private isSendButtonDisabled:Z

.field private onFocusChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private onHeightChangeListener:Lzendesk/support/request/ViewMessageComposer$OnHeightChangeListener;

.field private sendButton:Landroid/widget/ImageView;

.field private stateHelper:Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->onFocusChangeListenerList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lzendesk/support/request/ViewMessageComposer;->isSendButtonDisabled:Z

    .line 69
    iput-boolean v0, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    .line 73
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewMessageComposer;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->onFocusChangeListenerList:Ljava/util/List;

    .line 65
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lzendesk/support/request/ViewMessageComposer;->isSendButtonDisabled:Z

    .line 69
    iput-boolean p2, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    .line 78
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewMessageComposer;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->onFocusChangeListenerList:Ljava/util/List;

    .line 65
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lzendesk/support/request/ViewMessageComposer;->isSendButtonDisabled:Z

    .line 69
    iput-boolean p2, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    .line 83
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewMessageComposer;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->onFocusChangeListenerList:Ljava/util/List;

    .line 65
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lzendesk/support/request/ViewMessageComposer;->isSendButtonDisabled:Z

    .line 69
    iput-boolean p2, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    .line 89
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewMessageComposer;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lzendesk/support/request/ViewAttachmentsIndicator;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->onFocusChangeListenerList:Ljava/util/List;

    .line 65
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lzendesk/support/request/ViewMessageComposer;->isSendButtonDisabled:Z

    .line 69
    iput-boolean p1, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    .line 98
    iput-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    .line 99
    iput-object p3, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 100
    iput-object p4, p0, Lzendesk/support/request/ViewMessageComposer;->sendButton:Landroid/widget/ImageView;

    .line 101
    iput-object p5, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 102
    iput-object p7, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 103
    iput-object p6, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    .line 104
    iput-object p8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    .line 105
    new-instance p1, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;

    invoke-direct {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->stateHelper:Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;

    return-void
.end method

.method private applyState(Lzendesk/support/request/ViewMessageComposer$MessageComposerState;)V
    .locals 4

    .line 385
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->getFieldState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lzendesk/support/request/ViewMessageComposer;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-boolean v0, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->getFieldState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lzendesk/support/request/ViewMessageComposer;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    iget-boolean v0, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 400
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->getSendButtonState()I

    move-result v0

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 401
    invoke-direct {p0, v3, v3}, Lzendesk/support/request/ViewMessageComposer;->updateSendBtn(ZZ)V

    goto :goto_1

    .line 403
    :cond_4
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->getSendButtonState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_5

    .line 404
    invoke-direct {p0, v1, v3}, Lzendesk/support/request/ViewMessageComposer;->updateSendBtn(ZZ)V

    goto :goto_1

    .line 406
    :cond_5
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->getSendButtonState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_6

    .line 407
    invoke-direct {p0, v1, v1}, Lzendesk/support/request/ViewMessageComposer;->updateSendBtn(ZZ)V

    .line 411
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->isAttachmentButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/16 v3, 0x8

    .line 412
    :goto_2
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 413
    invoke-direct {p0}, Lzendesk/support/request/ViewMessageComposer;->updateAttachmentButtonPosition()V

    .line 414
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {v0, v3}, Lzendesk/support/request/ViewAttachmentsIndicator;->setVisibility(I)V

    .line 418
    :cond_8
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->isAttachmentButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->getAttachmentsCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 419
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->isAttachmentButtonActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lzendesk/support/request/ViewAttachmentsIndicator;->enableActiveState(Z)V

    .line 420
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->isAttachmentButtonActivated()Z

    move-result p1

    invoke-virtual {v0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->setBottomBorderVisible(Z)V

    :cond_9
    return-void
.end method

.method private bindViews()V
    .locals 1

    .line 190
    sget v0, Lcom/zendesk/sdk/R$id;->message_composer_input_text:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 191
    sget v0, Lcom/zendesk/sdk/R$id;->message_composer_attachments_indicator:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/ViewAttachmentsIndicator;

    iput-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    .line 192
    sget v0, Lcom/zendesk/sdk/R$id;->message_composer_send_btn:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->sendButton:Landroid/widget/ImageView;

    return-void
.end method

.method private initAnimationsAndAdjustLeftMargin()V
    .locals 11

    .line 205
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    sget v1, Lcom/zendesk/sdk/R$integer;->zs_request_message_composer_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 210
    sget v2, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_collapsed_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 211
    sget v3, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_expanded_min_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 214
    sget v4, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_expanded_side_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 215
    sget v5, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_collapsed_side_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 216
    sget v6, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_expanded_top_padding:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 217
    sget v7, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_collapsed_top_padding:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 219
    sget v8, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_expanded_bottom_padding:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 224
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 225
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 226
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    .line 227
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    .line 230
    new-instance v8, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v8}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 231
    new-instance v9, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v9}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 233
    iget-object v10, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    iget-object v10, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnExpandAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 239
    invoke-static {v9, v2, v3, v1}, Lzendesk/support/request/UtilsAnimation;->minHeightAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    iget-object v9, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 240
    invoke-static {v9, v5, v4, v1}, Lzendesk/support/request/UtilsAnimation;->sideMarginsAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    iget-object v9, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 241
    invoke-static {v9, v7, v6, v1}, Lzendesk/support/request/UtilsAnimation;->topPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    iget-object v9, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    const/4 v10, 0x0

    .line 242
    invoke-static {v9, v10, v0, v1}, Lzendesk/support/request/UtilsAnimation;->bottomPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 245
    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOnCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 246
    invoke-static {v9, v4, v5, v1}, Lzendesk/support/request/UtilsAnimation;->sideMarginsAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 247
    invoke-static {v8, v6, v7, v1}, Lzendesk/support/request/UtilsAnimation;->topPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 248
    invoke-static {v8, v3, v2, v1}, Lzendesk/support/request/UtilsAnimation;->minHeightAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 249
    invoke-static {v8, v0, v10, v1}, Lzendesk/support/request/UtilsAnimation;->bottomPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 252
    iget-object v5, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffExpandAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 253
    invoke-static {v8, v2, v3, v1}, Lzendesk/support/request/UtilsAnimation;->minHeightAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 254
    invoke-static {v8, v4, v4, v1}, Lzendesk/support/request/UtilsAnimation;->sideMarginsAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 255
    invoke-static {v8, v7, v6, v1}, Lzendesk/support/request/UtilsAnimation;->topPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 256
    invoke-static {v8, v10, v0, v1}, Lzendesk/support/request/UtilsAnimation;->bottomPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 259
    iget-object v5, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsOffCollapseAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 260
    invoke-static {v8, v4, v4, v1}, Lzendesk/support/request/UtilsAnimation;->sideMarginsAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 261
    invoke-static {v5, v6, v7, v1}, Lzendesk/support/request/UtilsAnimation;->topPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 262
    invoke-static {v5, v3, v2, v1}, Lzendesk/support/request/UtilsAnimation;->minHeightAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 263
    invoke-static {v3, v0, v10, v1}, Lzendesk/support/request/UtilsAnimation;->bottomPaddingAnimator(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 266
    invoke-direct {p0}, Lzendesk/support/request/ViewMessageComposer;->updateAttachmentButtonPosition()V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 196
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {v0, p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 200
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 201
    invoke-virtual {p0, p0}, Lzendesk/support/request/ViewMessageComposer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private isExpanded()Z
    .locals 2

    .line 425
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_collapsed_height:I

    .line 426
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 427
    iget-object v1, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyAddAttachmentsRequested()V
    .locals 2

    .line 453
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/ViewMessageComposer$InputListener;

    .line 454
    invoke-interface {v1}, Lzendesk/support/request/ViewMessageComposer$InputListener;->onAddAttachmentsRequested()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnFocusChangeListeners(Landroid/view/View;Z)V
    .locals 2

    .line 447
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->onFocusChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    .line 448
    invoke-interface {v1, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySendMessageRequested(Ljava/lang/String;)V
    .locals 2

    .line 459
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/ViewMessageComposer$InputListener;

    .line 460
    invoke-interface {v1, p1}, Lzendesk/support/request/ViewMessageComposer$InputListener;->onSendMessageRequested(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAttachmentButtonPosition()V
    .locals 4

    .line 270
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    sget v1, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_expanded_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 272
    sget v2, Lcom/zendesk/sdk/R$dimen;->zs_request_message_composer_collapsed_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 274
    iget-object v2, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 275
    iget-boolean v3, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 277
    :goto_0
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 278
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSendBtn(ZZ)V
    .locals 3

    .line 431
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 434
    sget v1, Lcom/zendesk/sdk/R$attr;->colorPrimary:I

    sget v2, Lcom/zendesk/sdk/R$color;->zs_request_fallback_color_primary:I

    invoke-static {v1, v0, v2}, Lzendesk/support/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 437
    :cond_0
    sget v1, Lcom/zendesk/sdk/R$color;->zs_request_message_composer_send_btn_color_inactive:I

    invoke-static {v1, v0}, Lzendesk/support/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result v0

    .line 441
    :goto_0
    iget-object v1, p0, Lzendesk/support/request/ViewMessageComposer;->sendButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 442
    iget-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->sendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    iget-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lzendesk/support/request/ViewMessageComposer;->sendButton:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lzendesk/support/UiUtils;->setTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method private viewInit(Landroid/content/Context;)V
    .locals 1

    .line 109
    sget v0, Lcom/zendesk/sdk/R$layout;->zs_view_request_message_composer:I

    invoke-static {p1, v0, p0}, Lzendesk/support/request/ViewMessageComposer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lzendesk/support/request/ViewMessageComposer;->bindViews()V

    .line 116
    invoke-direct {p0}, Lzendesk/support/request/ViewMessageComposer;->initListener()V

    .line 117
    invoke-direct {p0}, Lzendesk/support/request/ViewMessageComposer;->initAnimationsAndAdjustLeftMargin()V

    .line 118
    new-instance p1, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;

    invoke-direct {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->stateHelper:Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;

    return-void
.end method


# virtual methods
.method public addListener(Lzendesk/support/request/ViewMessageComposer$InputListener;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->onFocusChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 335
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->triggerStateUpdate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 123
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method enableAttachmentsButton(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 363
    iput-boolean p1, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    .line 364
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->triggerStateUpdate()V

    return-void
.end method

.method enableSendButton(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 358
    iput-boolean p1, p0, Lzendesk/support/request/ViewMessageComposer;->isSendButtonDisabled:Z

    .line 359
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->triggerStateUpdate()V

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 181
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewMessageComposer;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->onHeightChangeListener:Lzendesk/support/request/ViewMessageComposer$OnHeightChangeListener;

    invoke-interface {p1, v0}, Lzendesk/support/request/ViewMessageComposer$OnHeightChangeListener;->onHeightChange(I)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewMessageComposer;->setVisibility(I)V

    .line 185
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->requestLayout()V

    :goto_0
    return-void
.end method

.method public init(Lzendesk/belvedere/ImageStream;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->imageStream:Lzendesk/belvedere/ImageStream;

    .line 176
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->triggerStateUpdate()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {v1}, Lzendesk/support/request/ViewAttachmentsIndicator;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v2, p0, Lzendesk/support/request/ViewMessageComposer;->stateHelper:Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;

    iget-boolean v3, p0, Lzendesk/support/request/ViewMessageComposer;->isSendButtonDisabled:Z

    iget-boolean v4, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    iget-object v5, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    iget-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->imageStream:Lzendesk/belvedere/ImageStream;

    .line 289
    invoke-virtual {p1}, Lzendesk/belvedere/ImageStream;->getKeyboardHelper()Lzendesk/belvedere/KeyboardHelper;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/belvedere/KeyboardHelper;->getInputTrap()Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    .line 285
    invoke-virtual/range {v2 .. v7}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->onAttachmentClicked(ZZLandroid/widget/EditText;Landroid/widget/EditText;Lzendesk/support/request/ViewAttachmentsIndicator;)Lzendesk/support/request/ViewMessageComposer$MessageComposerState;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/ViewMessageComposer;->applyState(Lzendesk/support/request/ViewMessageComposer$MessageComposerState;)V

    .line 292
    invoke-direct {p0}, Lzendesk/support/request/ViewMessageComposer;->notifyAddAttachmentsRequested()V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 296
    iget-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->reset()V

    .line 299
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->triggerStateUpdate()V

    .line 301
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewMessageComposer;->notifySendMessageRequested(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 315
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    iget-object p3, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getId()I

    move-result p3

    if-ne p1, p3, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 316
    iget-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 317
    iget-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-static {p1}, Lzendesk/support/UiUtils;->dismissKeyboard(Landroid/view/View;)V

    .line 318
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->triggerStateUpdate()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 308
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/ViewMessageComposer;->notifyOnFocusChangeListeners(Landroid/view/View;Z)V

    .line 309
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->triggerStateUpdate()V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_0

    .line 344
    iget-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->onHeightChangeListener:Lzendesk/support/request/ViewMessageComposer$OnHeightChangeListener;

    if-eqz p1, :cond_0

    .line 345
    invoke-interface {p1, p5}, Lzendesk/support/request/ViewMessageComposer$OnHeightChangeListener;->onHeightChange(I)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public removeAllListener()V
    .locals 1

    .line 160
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public requestFocusForInput()V
    .locals 1

    .line 350
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public setAttachmentsCount(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    invoke-virtual {v0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->setAttachmentsCount(I)V

    .line 171
    invoke-virtual {p0}, Lzendesk/support/request/ViewMessageComposer;->triggerStateUpdate()V

    return-void
.end method

.method public setOnHeightChangeListener(Lzendesk/support/request/ViewMessageComposer$OnHeightChangeListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lzendesk/support/request/ViewMessageComposer;->onHeightChangeListener:Lzendesk/support/request/ViewMessageComposer$OnHeightChangeListener;

    return-void
.end method

.method triggerStateUpdate()V
    .locals 8

    .line 368
    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->imageStream:Lzendesk/belvedere/ImageStream;

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lzendesk/support/request/ViewMessageComposer;->stateHelper:Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;

    iget-object v2, p0, Lzendesk/support/request/ViewMessageComposer;->inputTextField:Landroid/widget/EditText;

    .line 373
    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->getKeyboardHelper()Lzendesk/belvedere/KeyboardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/belvedere/KeyboardHelper;->getInputTrap()Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/request/ViewMessageComposer;->attachmentsIndicator:Lzendesk/support/request/ViewAttachmentsIndicator;

    iget-object v0, p0, Lzendesk/support/request/ViewMessageComposer;->imageStream:Lzendesk/belvedere/ImageStream;

    .line 374
    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->isAttachmentsPopupVisible()Z

    move-result v5

    iget-boolean v6, p0, Lzendesk/support/request/ViewMessageComposer;->isSendButtonDisabled:Z

    iget-boolean v7, p0, Lzendesk/support/request/ViewMessageComposer;->isAttachmentsButtonDisabled:Z

    .line 372
    invoke-virtual/range {v1 .. v7}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->getState(Landroid/widget/EditText;Landroid/widget/EditText;Lzendesk/support/request/ViewAttachmentsIndicator;ZZZ)Lzendesk/support/request/ViewMessageComposer$MessageComposerState;

    move-result-object v0

    .line 376
    invoke-direct {p0, v0}, Lzendesk/support/request/ViewMessageComposer;->applyState(Lzendesk/support/request/ViewMessageComposer$MessageComposerState;)V

    return-void
.end method
