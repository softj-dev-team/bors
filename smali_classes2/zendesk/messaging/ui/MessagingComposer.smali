.class public Lzendesk/messaging/ui/MessagingComposer;
.super Ljava/lang/Object;
.source "MessagingComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;
    }
.end annotation

.annotation runtime Lzendesk/messaging/MessagingActivityScope;
.end annotation


# static fields
.field static final DEFAULT_HINT:I


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

.field private belvedereMediaPickerListener:Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;

.field private final imageStream:Lzendesk/belvedere/ImageStream;

.field private final inputBoxAttachmentClickListener:Lzendesk/messaging/ui/InputBoxAttachmentClickListener;

.field private final inputBoxConsumer:Lzendesk/messaging/ui/InputBoxConsumer;

.field private final typingEventDispatcher:Lzendesk/messaging/TypingEventDispatcher;

.field private final viewModel:Lzendesk/messaging/MessagingViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget v0, Lzendesk/messaging/R$string;->zui_hint_type_message:I

    sput v0, Lzendesk/messaging/ui/MessagingComposer;->DEFAULT_HINT:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lzendesk/messaging/MessagingViewModel;Lzendesk/belvedere/ImageStream;Lzendesk/messaging/BelvedereMediaHolder;Lzendesk/messaging/ui/InputBoxConsumer;Lzendesk/messaging/ui/InputBoxAttachmentClickListener;Lzendesk/messaging/TypingEventDispatcher;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lzendesk/messaging/ui/MessagingComposer;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 61
    iput-object p2, p0, Lzendesk/messaging/ui/MessagingComposer;->viewModel:Lzendesk/messaging/MessagingViewModel;

    .line 62
    iput-object p3, p0, Lzendesk/messaging/ui/MessagingComposer;->imageStream:Lzendesk/belvedere/ImageStream;

    .line 63
    iput-object p4, p0, Lzendesk/messaging/ui/MessagingComposer;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    .line 64
    iput-object p5, p0, Lzendesk/messaging/ui/MessagingComposer;->inputBoxConsumer:Lzendesk/messaging/ui/InputBoxConsumer;

    .line 65
    iput-object p6, p0, Lzendesk/messaging/ui/MessagingComposer;->inputBoxAttachmentClickListener:Lzendesk/messaging/ui/InputBoxAttachmentClickListener;

    .line 66
    iput-object p7, p0, Lzendesk/messaging/ui/MessagingComposer;->typingEventDispatcher:Lzendesk/messaging/TypingEventDispatcher;

    return-void
.end method

.method static synthetic access$000(Lzendesk/messaging/ui/MessagingComposer;)Lzendesk/messaging/TypingEventDispatcher;
    .locals 0

    .line 36
    iget-object p0, p0, Lzendesk/messaging/ui/MessagingComposer;->typingEventDispatcher:Lzendesk/messaging/TypingEventDispatcher;

    return-object p0
.end method


# virtual methods
.method public bind(Lzendesk/messaging/ui/InputBox;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer;->inputBoxConsumer:Lzendesk/messaging/ui/InputBoxConsumer;

    invoke-virtual {p1, v0}, Lzendesk/messaging/ui/InputBox;->setInputTextConsumer(Lzendesk/messaging/ui/InputBox$InputTextConsumer;)V

    .line 77
    new-instance v0, Lzendesk/messaging/ui/MessagingComposer$1;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/MessagingComposer$1;-><init>(Lzendesk/messaging/ui/MessagingComposer;)V

    invoke-virtual {p1, v0}, Lzendesk/messaging/ui/InputBox;->setInputTextWatcher(Landroid/text/TextWatcher;)V

    .line 84
    new-instance v0, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;

    iget-object v1, p0, Lzendesk/messaging/ui/MessagingComposer;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    iget-object v2, p0, Lzendesk/messaging/ui/MessagingComposer;->imageStream:Lzendesk/belvedere/ImageStream;

    invoke-direct {v0, v1, p1, v2}, Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;-><init>(Lzendesk/messaging/BelvedereMediaHolder;Lzendesk/messaging/ui/InputBox;Lzendesk/belvedere/ImageStream;)V

    iput-object v0, p0, Lzendesk/messaging/ui/MessagingComposer;->belvedereMediaPickerListener:Lzendesk/messaging/ui/MessagingComposer$BelvedereMediaPickerListener;

    .line 86
    iget-object v1, p0, Lzendesk/messaging/ui/MessagingComposer;->imageStream:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v1, v0}, Lzendesk/belvedere/ImageStream;->addListener(Lzendesk/belvedere/ImageStream$Listener;)V

    .line 88
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveMessagingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lzendesk/messaging/ui/MessagingComposer;->activity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lzendesk/messaging/ui/MessagingComposer$2;

    invoke-direct {v2, p0, p1}, Lzendesk/messaging/ui/MessagingComposer$2;-><init>(Lzendesk/messaging/ui/MessagingComposer;Lzendesk/messaging/ui/InputBox;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method renderState(Lzendesk/messaging/ui/MessagingState;Lzendesk/messaging/ui/InputBox;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 105
    iget-object v0, p1, Lzendesk/messaging/ui/MessagingState;->hint:Ljava/lang/String;

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lzendesk/messaging/ui/MessagingState;->hint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lzendesk/messaging/ui/MessagingComposer;->DEFAULT_HINT:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    invoke-virtual {p2, v0}, Lzendesk/messaging/ui/InputBox;->setHint(Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p1, Lzendesk/messaging/ui/MessagingState;->enabled:Z

    invoke-virtual {p2, v0}, Lzendesk/messaging/ui/InputBox;->setEnabled(Z)V

    .line 108
    iget v0, p1, Lzendesk/messaging/ui/MessagingState;->keyboardInputType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzendesk/messaging/ui/InputBox;->setInputType(Ljava/lang/Integer;)V

    .line 110
    iget-object v0, p1, Lzendesk/messaging/ui/MessagingState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lzendesk/messaging/ui/MessagingState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    invoke-virtual {p1}, Lzendesk/messaging/AttachmentSettings;->isSendingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingComposer;->inputBoxAttachmentClickListener:Lzendesk/messaging/ui/InputBoxAttachmentClickListener;

    invoke-virtual {p2, p1}, Lzendesk/messaging/ui/InputBox;->setAttachmentsIndicatorClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingComposer;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    invoke-virtual {p1}, Lzendesk/messaging/BelvedereMediaHolder;->getSelectedMediaCount()I

    move-result p1

    invoke-virtual {p2, p1}, Lzendesk/messaging/ui/InputBox;->setAttachmentsCount(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 114
    invoke-virtual {p2, p1}, Lzendesk/messaging/ui/InputBox;->setAttachmentsIndicatorClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method
