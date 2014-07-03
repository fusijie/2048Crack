.class public final enum Lcom/nextpeer/android/cs$ab;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/cs$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/cs$ab;

.field public static final enum b:Lcom/nextpeer/android/cs$ab;

.field private static final synthetic d:[Lcom/nextpeer/android/cs$ab;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/nextpeer/android/cs$ab;

    const-string v1, "SCORE_MODIFIER"

    invoke-direct {v0, v1, v3, v2}, Lcom/nextpeer/android/cs$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cs$ab;->a:Lcom/nextpeer/android/cs$ab;

    new-instance v0, Lcom/nextpeer/android/cs$ab;

    const-string v1, "PLAY_MODIFIER"

    invoke-direct {v0, v1, v2, v4}, Lcom/nextpeer/android/cs$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cs$ab;->b:Lcom/nextpeer/android/cs$ab;

    new-array v0, v4, [Lcom/nextpeer/android/cs$ab;

    sget-object v1, Lcom/nextpeer/android/cs$ab;->a:Lcom/nextpeer/android/cs$ab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/cs$ab;->b:Lcom/nextpeer/android/cs$ab;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nextpeer/android/cs$ab;->d:[Lcom/nextpeer/android/cs$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/cs$ab;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/cs$ab;
    .locals 1

    const-class v0, Lcom/nextpeer/android/cs$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/cs$ab;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/cs$ab;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/cs$ab;->d:[Lcom/nextpeer/android/cs$ab;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/cs$ab;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cs$ab;->c:I

    return v0
.end method
