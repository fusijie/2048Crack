.class public final enum Lcom/nextpeer/android/hc$aa;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/hc$aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/hc$aa;

.field public static final enum b:Lcom/nextpeer/android/hc$aa;

.field private static final synthetic d:[Lcom/nextpeer/android/hc$aa;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/hc$aa;

    const-string v1, "UserAccountTypeGuest"

    invoke-direct {v0, v1, v2, v2}, Lcom/nextpeer/android/hc$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    new-instance v0, Lcom/nextpeer/android/hc$aa;

    const-string v1, "UserAccountTypeFacebook"

    invoke-direct {v0, v1, v3, v3}, Lcom/nextpeer/android/hc$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nextpeer/android/hc$aa;

    sget-object v1, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/hc$aa;->d:[Lcom/nextpeer/android/hc$aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/hc$aa;->c:I

    return-void
.end method

.method public static a(I)Lcom/nextpeer/android/hc$aa;
    .locals 5

    invoke-static {}, Lcom/nextpeer/android/hc$aa;->values()[Lcom/nextpeer/android/hc$aa;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/nextpeer/android/hc$aa;->c:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/hc$aa;
    .locals 1

    const-class v0, Lcom/nextpeer/android/hc$aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/hc$aa;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/hc$aa;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/hc$aa;->d:[Lcom/nextpeer/android/hc$aa;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/hc$aa;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/hc$aa;->c:I

    return v0
.end method
