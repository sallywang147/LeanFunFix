// Lean compiler output
// Module: Main
// Imports: Init
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C"
{
#endif
	// LEAN_EXPORT is generated from Lean's foreign function interface (FFI) binding
	// (This macro marks functions to be exported so they can be called from outside.)
	LEAN_EXPORT lean_object *_lean_main(lean_object *);
	// Declares the exported function `_lean_main` which takes a Lean object (often the IO world)
	// and returns a Lean object (the result of running the main Lean code).

	LEAN_EXPORT lean_object *l_checkNumber___boxed(lean_object *);
	// Declares an exported boxed version of the `l_checkNumber` function that works on Lean objects.

	lean_object *l_IO_println___at_Lean_instEval___spec__1(lean_object *, lean_object *);
	// Declares a function (likely internal) for printing a Lean object (such as a string)
	// to the output. It takes two Lean objects, probably a string and the IO world state.

	static lean_object *l_main___closed__1;
	// Declares a static global Lean object pointer. It will hold a pre-computed value (here, a constant string).

	uint8_t lean_uint8_dec_eq(uint8_t, uint8_t);
	// Declares a function that checks equality between two 8-bit unsigned integers,
	// returning a uint8_t value (typically 1 for true and 0 for false).

	LEAN_EXPORT uint8_t l_checkNumber(uint8_t);
	// Declares an exported function `l_checkNumber` that takes an 8-bit unsigned integer
	// and returns an 8-bit unsigned integer (acting as a boolean).

	LEAN_EXPORT uint8_t l_checkNumber(uint8_t x_1)
	{
	_start:
	{
		uint8_t x_2;
		uint8_t x_3;
		x_2 = 42;						   // Set x_2 to the constant value 42.
		x_3 = lean_uint8_dec_eq(x_1, x_2); // Check if the input `x_1` equals 42.
		return x_3;						   // Return the result of the equality test.
	}
	}

	LEAN_EXPORT lean_object *l_checkNumber___boxed(lean_object *x_1)
	{
	_start:
	{
		uint8_t x_2;
		uint8_t x_3;
		lean_object *x_4;
		x_2 = lean_unbox(x_1);	  // Extract the raw uint8_t value from the boxed Lean object.
		lean_dec(x_1);			  // Decrement the reference count of the input object.
		x_3 = l_checkNumber(x_2); // Call the unboxed `l_checkNumber` function with the raw value.
		x_4 = lean_box(x_3);	  // Box the uint8_t result back into a Lean object.
		return x_4;				  // Return the boxed result.
	}
	}

	static lean_object *_init_l_main___closed__1()
	{
	_start:
	{
		lean_object *x_1;
		// Create a Lean string from a byte array. "Done." is 5 bytes long.
		x_1 = lean_mk_string_from_bytes("Done.", 5);
		return x_1; // Return the newly created Lean string.
	}
	}

	LEAN_EXPORT lean_object *_lean_main(lean_object *x_1)
	{
	_start:
	{
		lean_object *x_2;
		lean_object *x_3;
		x_2 = l_main___closed__1; // Retrieve the pre-initialized constant string ("Done.").
		// Call the Lean IO println function to print the string, passing the IO world state `x_1`.
		x_3 = l_IO_println___at_Lean_instEval___spec__1(x_2, x_1);
		return x_3; // Return the result of the IO print operation.
	}
	}

	lean_object *initialize_Init(uint8_t builtin, lean_object *);
	// Declaration of an initialization function for the Init module.
	// It takes a built-in flag and an IO world state.

	static bool _G_initialized = false;
	// Static flag to track if the Main module has already been initialized.

	LEAN_EXPORT lean_object *initialize_Main(uint8_t builtin, lean_object *w)
	{
		lean_object *res;
		// If already initialized, return a successful IO result (unit value).
		if (_G_initialized)
			return lean_io_result_mk_ok(lean_box(0));
		_G_initialized = true; // Mark the module as initialized.
		// Initialize the Init module with a new IO world.
		res = initialize_Init(builtin, lean_io_mk_world());
		// If initialization of Init failed, propagate the error result.
		if (lean_io_result_is_error(res))
			return res;
		lean_dec_ref(res); // Decrement the reference count for the result.
		// Initialize the constant string used in main by calling its initializer.
		l_main___closed__1 = _init_l_main___closed__1();
		// Mark the string as persistent to prevent it from being garbage collected.
		lean_mark_persistent(l_main___closed__1);
		// Return a successful IO result (unit value) to indicate successful initialization.
		return lean_io_result_mk_ok(lean_box(0));
	}

	void lean_initialize_runtime_module();
	// Declaration of a function to initialize the Lean runtime module (defined elsewhere).

#if defined(WIN32) || defined(_WIN32)
#include <windows.h> // Include Windows-specific headers if compiling on Windows.
#endif

	int main(int argc, char **argv)
	{
#if defined(WIN32) || defined(_WIN32)
		SetErrorMode(SEM_FAILCRITICALERRORS);
		// On Windows, set the error mode to prevent system-critical error pop-ups.
#endif
		lean_object *in;
		lean_object *res;
		// Declare Lean object pointers for use during initialization and runtime.

		lean_initialize_runtime_module();
		// Initialize the Lean runtime system.

		lean_set_panic_messages(false);
		// Temporarily disable panic messages during initialization.

		res = initialize_Main(1 /* builtin */, lean_io_mk_world());
		// Initialize the Main module with a built-in flag (set to 1) and a new IO world.

		lean_set_panic_messages(true);
		// Re-enable panic messages after initialization.

		lean_io_mark_end_initialization();
		// Mark the end of the initialization phase for the Lean IO system.

		if (lean_io_result_is_ok(res))
		{
			lean_dec_ref(res); // Clean up the initialization result.
			lean_init_task_manager();
			// Initialize the Lean task manager (for managing asynchronous tasks).

			res = _lean_main(lean_io_mk_world());
			// Call the Lean main function with a new IO world state.
		}

		lean_finalize_task_manager();
		// Finalize (clean up) the Lean task manager after main execution.

		if (lean_io_result_is_ok(res))
		{
			int ret = 0;	   // Set the return code to 0 indicating success.
			lean_dec_ref(res); // Decrement the reference count of the result.
			return ret;
		}
		else
		{
			lean_io_result_show_error(res);
			// If there was an error, display the error message.

			lean_dec_ref(res);
			return 1; // Return a non-zero value to indicate failure.
		}
	}

#ifdef __cplusplus
}
#endif
// End of the extern "C" block if this code is being compiled as C++.
