.class public Lzendesk/support/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/UiUtils$ScreenSize;
    }
.end annotation


# static fields
.field private static IMPL:Lzendesk/support/UiUtils; = null

.field private static final LOG_TAG:Ljava/lang/String; = "UiUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lzendesk/support/UiUtils;

    invoke-direct {v0}, Lzendesk/support/UiUtils;-><init>()V

    sput-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 301
    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 303
    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static dismissKeyboard(Landroid/app/Activity;)V
    .locals 1

    .line 118
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0}, Lzendesk/support/UiUtils;->internalDismissKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public static dismissKeyboard(Landroid/view/View;)V
    .locals 1

    .line 127
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0}, Lzendesk/support/UiUtils;->internalDismissKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static resolveColor(ILandroid/content/Context;)I
    .locals 1

    .line 87
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0, p1}, Lzendesk/support/UiUtils;->internalResolveColor(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static setTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1

    .line 147
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0, p1, p2}, Lzendesk/support/UiUtils;->internalSetTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method public static setUiUtils(Lzendesk/support/UiUtils;)V
    .locals 0

    .line 50
    sput-object p0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    return-void
.end method

.method public static setVisibility(Landroid/view/View;I)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "UiUtils"

    const-string v0, "View is null and can\'t change visibility"

    .line 104
    invoke-static {p1, v0, p0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 1

    .line 136
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0}, Lzendesk/support/UiUtils;->internalShowKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static themeAttributeToColor(ILandroid/content/Context;I)I
    .locals 1

    .line 76
    sget-object v0, Lzendesk/support/UiUtils;->IMPL:Lzendesk/support/UiUtils;

    invoke-virtual {v0, p0, p1, p2}, Lzendesk/support/UiUtils;->internalThemeAttributeToColor(ILandroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public internalDismissKeyboard(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "UiUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot dismiss the keyboard when fragment is detached or the activity is null."

    .line 238
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "input_method"

    .line 242
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 244
    instance-of v3, v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_2

    .line 245
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot hide soft input because window token could not be obtained"

    .line 252
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot hide soft input because we could not get the InputMethodManager"

    .line 255
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public internalDismissKeyboard(Landroid/view/View;)V
    .locals 4

    const-string v0, "UiUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot hide soft input because window token could not be obtained"

    .line 263
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 269
    instance-of v3, v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_1

    .line 270
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot hide soft input because we could not get the InputMethodManager"

    .line 275
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public internalResolveColor(ILandroid/content/Context;)I
    .locals 0

    .line 231
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public internalSetTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "UiUtils"

    const-string p3, "Drawable is null, cannot apply a tint"

    .line 153
    invoke-static {p2, p3, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_0
    invoke-static {p2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 158
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    if-eqz p3, :cond_1

    .line 161
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public internalShowKeyboard(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "UiUtils"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Cannot show soft input because window token could not be obtained"

    .line 283
    invoke-static {v1, v0, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 289
    instance-of v3, v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_1

    .line 290
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    .line 292
    invoke-virtual {v2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Cannot hide soft input because we could not get the InputMethodManager"

    .line 295
    invoke-static {v1, v0, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public internalThemeAttributeToColor(ILandroid/content/Context;I)I
    .locals 5

    const-string v0, "UiUtils"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 202
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    .line 204
    invoke-virtual {v3, p1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Resource %d not found. Resource is either missing or you are using a non-ui context."

    .line 208
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    invoke-static {v0, p1, v1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {p3, p2}, Lzendesk/support/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result p1

    return p1

    .line 222
    :cond_1
    iget p1, v2, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_2

    .line 223
    iget p1, v2, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 224
    :cond_2
    iget p1, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, p2}, Lzendesk/support/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result p1

    :goto_0
    return p1

    :cond_3
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "themeAttributeId, context, and fallbackColorId are required."

    .line 197
    invoke-static {v0, p2, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p1, -0x1000000

    return p1
.end method

.method public internalThemeAttributeToPixels(ILandroid/content/Context;IF)I
    .locals 3

    .line 169
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 171
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    .line 173
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Resource %d not found. Resource is either missing or you are using a non-ui context."

    .line 177
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "UiUtils"

    .line 182
    invoke-static {v1, p1, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 183
    invoke-static {p3, p4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    .line 187
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
