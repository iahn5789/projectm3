// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using System.Collections.Generic;
using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class CustomVariablesConfiguration : Configuration
    {
        /// <summary>
        /// Custom variable name prefix (case-insensitive) used to indicate a global variable.
        /// </summary>
        public const string GlobalPrefix = "G_";

        [Tooltip("기본적으로 초기화할 변수 목록입니다. 글로벌 변수('G_' 또는 'g_'로 시작하는 이름)는 첫 번째 응용 프로그램 시작 시 초기화되고 다른 변수는 각 상태 재설정 시 초기화됩니다.")]
        public List<CustomVariable> PredefinedVariables = new List<CustomVariable>();

        /// <summary>
        /// Checks whether a custom variable with the provided name is global.
        /// </summary>
        public static bool IsGlobalVariable (string name) => name.StartsWith(GlobalPrefix, StringComparison.OrdinalIgnoreCase);

        /// <summary>
        /// Attempts to parse the provided value string into float (the string should contain a dot), integer and then boolean.
        /// When parsing fails will return the initial string.
        /// </summary>
        public static object ParseVariableValue (string value)
        {
            if (value.Contains(".") && ParseUtils.TryInvariantFloat(value, out var floatValue)) return floatValue;
            else if (ParseUtils.TryInvariantInt(value, out var intValue)) return intValue;
            else if (bool.TryParse(value, out var boolValue)) return boolValue;
            else return value;
        }
    }
}
